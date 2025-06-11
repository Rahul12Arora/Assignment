const bcrypt = require('bcrypt');
const saltRounds = 10;
const myPlaintextPassword = 'abc@123';
const someOtherPlaintextPassword = 'not_bacon';

async function hashPassword(textPassword) {
    try{
        let query = `UPDATE staffdetails
                    SET hashedPass = CASE ID \n`
        for(let i = 0; i < 26; i++) {
            console.log(`Hashing password attempt ${i + 1}`);
            const hashedPass = await bcrypt.hash(textPassword, saltRounds);
            query += `WHEN ${i + 1} THEN '${hashedPass}' \n`;
        }
        query += `END \n`
        query += `WHERE ID IN (${Array.from({length: 26}, (_, i) => i + 1).join(', ')})`;
        console.log('Generated SQL Query:', query);
    }
    catch(error) {
        console.error('Error in hashPassword function', error);
        throw new Error('Password hashing failed');
    }
}

hashPassword('abc@123')