import request from 'supertest';
import {httpServer} from '../src/index.js';

describe('Concat tests', () => {

    afterAll((done) => {
        httpServer.close(done);
    });

    describe('GET /concat', () => {
        it('should return the concatenation of two strings', async () => {
            return expect(true).toBe(false);
        });

        it('should concatenate numbers as strings', async () => {
            return expect(true).toBe(false);
        });

        it('should return an error if "str1" or "str2" is missing', async () => {
            return expect(true).toBe(false);
        });
    });
});