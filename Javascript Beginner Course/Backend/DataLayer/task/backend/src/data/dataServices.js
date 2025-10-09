import crypto from 'crypto';

// In-memory storage
export const store = {
    users: new Map(),
    messages: [],
};

export const userService = {
    createUser: async (username, hashedPassword) => {
        // You can add debug outputs if you need this way:
        console.log('Data layer: Creating user:', {username});

        if (store.users.has(username)) {
            throw new Error('Username already exists');
        }

        store.users.set(username, {username, password: hashedPassword});
        return {username};
    },

    getUser: async (username) => {
        return undefined;
    },

};

export const messageService = {
    addMessage: async (username, content) => {
        const message = {
            id: crypto.randomUUID(),
            username,
            content};

        store.messages.push(message);

        return message;


    },

    getMessages: async () => {

        return store.messages.splice(0)
    },

    // Optional task
    deleteMessage: async (messageId) => {
        // delete the message with messageId from the storage
        return false;
    }
};
