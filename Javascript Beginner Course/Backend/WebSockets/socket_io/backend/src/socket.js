import { messageService } from './data/dataServices.js';

export const initializeSocketIO = (io) => {

    // Setup handlers for a new socket connection
    io.on('connection', (socket) => {
        console.log('User connected');

        // Handle new messages
        socket.on('message', async (data) => {
            try {
                // Add a new message to the message service

                // Broadcast the message to all connected clients
            } catch (error) {
                socket.emit('error', { message: 'Error sending message' });
            }
        });

        // Handle message deletion
        socket.on('deleteMessage', async (data) => {
            try {
                // Delete the message using the message service

                // Trigger an 'error' event if the message was not found

                // Broadcast the 'messageDeleted' event with messageId to all connected clients
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