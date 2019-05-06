# ML-Character-Recognition-in-R
Neural Network Design for Character Recognition with some missing data and mistakes in the data

Here, I have taken two letters R and I, and recognised the two characters using neural network. 
	
The data in ML1 file contains 3 types of R. R1 is the accurate or perfect character R. R2 and R3 are types of R samples with some missing data and mistakes in the data. We are predicting the training error and testing error by having R1 as the output and R2 and R3 are the inputs.
I introduced 1 hidden layer with 5 hidden units in order to obtain the appropriate output i.e. the output with the least possible training and testing error.

The data in ML2 file contains 3 types of I. I1 is the accurate or perfect character I. I2 and I3 are types of I samples with some missing data and mistakes in the data. We are predicting the training error and testing error by having I1 as the output and I2 and I3 are the inputs.
I introduced 1 hidden layer with 15 hidden units in order to obtain the appropriate output i.e. the output with the least possible training and testing error.

INFERENCE : For the character R, the minimum or the least possible training and testing error that I could get is 0.32 and 0.21 respectively.
When I increased or decreased the number of hidden units, the training error gradually increased and when I increased or decreased the number of hidden layers, the testing error increased like I got 0.78 approximately for 2 hidden layers.

For the character I, the minimum or the least possible training and testing error that I could get is 0.03 and 0.2 respectively.
When I increased or decreased the number of hidden units, the testing error gradually increased and when I increased or decreased the number of hidden layers, the training error increased like I got 0.58 approximately for 2 hidden layers.
	
Here, I have taken samples of character R and I which contains few missing data or mistakes in the data and I have predicted or recognised the character with the best possible number of hidden layers and hidden units in order to obtain the best results.

The same way you can try for different characters by just creating a csv file which contains the matrix design of a particular character ( with missing data or mistakes in the data ) and try recognising the particular character.
