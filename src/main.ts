const main = (text: string) => {
    console.log(text);
    const g = 3.1416;
    let nameIsHundredTImes = 'Amar sonar bangla';
    nameIsHundredTImes =
        nameIsHundredTImes +
        nameIsHundredTImes +
        nameIsHundredTImes +
        nameIsHundredTImes +
        nameIsHundredTImes;
    console.log(`G is:${g} ${nameIsHundredTImes}`);
};

main(
    'Hello world 2! lorem4,Hello world 2! lorem4,Hello world 2! lorem4,Hello world 2! lorem4,Hello world 2! lorem4 Hello world 2! lorem4 Hello world 2! lorem4',
);
