import fs from 'node:fs/promises';

async function readCSV(filePath) {
    try {
        let fileContent = await fs.readFile(filePath, 'utf8');
        fileContent = fileContent.split('\n');
        return fileContent;
    }
    catch (error){
        console.error('Error on readCSV', error);
    }    
}

export default readCSV;