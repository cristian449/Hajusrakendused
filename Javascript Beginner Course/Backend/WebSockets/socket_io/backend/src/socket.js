import { messageService } from './data/dataServices.js';

export const initializeSocketIO = (io) => {

    // Setup handlers for a new socket connection
    io.on('connection', (socket) => {
        console.log('User connected');

        // Handle new messages
        socket.on('message', async (data) => {
            try {
                const username = data.username;
                const content = data.content;
                const message = await messageService.addMessage(username, content);



                io.emit("message", message)
            } catch (error) {
                socket.emit('error', { message: 'Error sending message' });
            }
        });

        // Handle message deletion
        socket.on('deleteMessage', async (data) => {
            try {
                const messageId = data.messageId
                 const messageDeleted = await messageService.deleteMessage(messageId);



                if (!messageDeleted) {
                    socket.emit("error", {message: 'Message not found'})
                }


                io.emit("messagedeleted", {messageDeleted});
            } catch (error) {
                socket.emit('error', { message: 'Error deleting message' });
            }
        });

        // Handle user disconnection
        socket.on('disconnect', () => {
            console.log('User disconnected');
        });

        // Handle errors
        socket.on('error', (error) => {
            console.error('Socket error:', error);
        });
    });

    // Handle server-side errors
    io.on('error', (error) => {
        console.error('Socket.IO error:', error);
    });
};