# 12-balls_puzzle

12 BALLS PUZZLE is a math puzzle game.

## Installation

Doesn't require installation. Just run the bash script, you must have installed dialog.

### The Solution for the math puzzle:
Number the balls b1, b2, b3, ... b10, b11, b12

Start off with them in 3 groups: [b1, b2, b3 and b4], [b5, b6, b7 and b8] and [b9,b10,b11 and b12]

Weigh b1, b2, b3 and b4 vs b5, b6, b7 and b8 with 3 possible outcomes:

1. If they balance then b9,b10,b11,b12 have the odd ball, so weigh b6,b7,b8 vs b9,b10,b11 with 3 possible outcomes:
1.a If b6,b7,b8 vs b9,b10,b11 balances, b12 is the odd ball. Weigh it against any other ball to determine if heavy or light.
1.b If b9,b10,b11 is heavy then they contain a heavy ball. Weigh b9 vs b10, if balanced then b11 is the odd heavy ball, else the heavier of b9 or b10 is the odd heavy ball.
1.c If b9,b10,b11 is light then they contain a light ball. Weigh b9 vs b10, if balanced then b11 is the odd light ball, else the lighter of b9 or b10 is the odd light ball.

2. If b5,b6,b7,b8 > b1,b2,b3,b4 then either b5,b6,b7,b8 contains a heavy ball or b1,b2,b3,b4 contains a light ball so weigh b1,b2,b5 vs b3,b6,b12 with 3 possible outcomes:
2.a If b1,b2,b5 vs b3,b6,b12 balances, then either b4 is the odd light ball or b7 or b8 is the odd heavy ball. Weigh b7 vs b8, if they balance then b4 is the odd light ball, or the heaviest of b7 vs b8 is the odd heavy ball.
2.b If b3,b6,b12 is heavy then either b6 is the odd heavy ball or b1 or b2 is the odd light ball. Weigh b1 vs b2, if balanced then b6 is the odd heavy ball, or the lightest of b1 vs b2 is the odd light ball.
2.c If b3,b6,b12 is light then either b3 is light or b5 is heavy. Weigh b3 against any other ball, if balanced then b5 is the odd heavy ball else b3 is the odd light ball.

3. If b1,b2,b3,b4 > b5,b6,b7,b8 then either b1,b2,b3,b4 contains a heavy ball or b5,b6,b7,b8 contains a light ball so weigh b5,b6,b1 vs b7,b2,b12 with 3 possible outcomes:
3.a If b5,b6,b1 vs b7,b2,b12 balances, then either b8 is the odd light ball or b3 or b4 is the odd heavy ball. Weigh b3 vs b4, if they balance then b8 is the odd light ball, or the heaviest of b3 vs b4 is the odd heavy ball.
3.b If b7,b2,b12 is heavy then either b2 is the odd heavy ball or b5 or b6 is the odd light ball. Weigh b5 vs b6, if balanced then b2 is the odd heavy ball, or the lightest of b5 vs b6 is the odd light ball.
3.c If b7,b2,b12 is light then either b7 is light or b1 is heavy. Weigh b7 against any other ball, if balanced then b1 is the odd heavy ball else b7 is the odd light ball.
