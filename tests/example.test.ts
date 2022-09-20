const sum = (...args: Array<number>):number => args.reduce((cur,prev, accum) => (accum=cur+prev,accum));

describe('sum module', () => {
  test('adds 1 + 2 to equal 3', () => {
    expect(sum(1, 2)).toBe(3);
  });
});
