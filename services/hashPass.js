const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = 's0/\/\P4$$w0rD';
const someOtherPlaintextPassword = 'not_bacon';

async function hashPassword(textPassword) {
    try{
        const hashedPass = await bcrypt.hash(textPassword, saltRounds);
        return hashedPass;
    }
    catch(error) {
        console.error('Error in hashPassword function', error);
        throw new Error('Password hashing failed');
    }
}

async function checkUserLogin(hashedPassword, password) {
    try{
        const match = await bcrypt.compare(password, hashedPassword);
        console.log('Password match:', match);
        return match;
    }
    catch (error) {
        console.error('Error in checkUser fucntion', error);
        throw new Error('Password check failed');
    }
}

module.exports = {
    hashPassword,
    checkUserLogin
};