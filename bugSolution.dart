```dart
List<int> numbers = [1, 2, 3, 4, 5];
int? evenNumber; 

for (int number in numbers) {
if (number % 2 == 0) {
evenNumber = number; 
break; 
}
}

print(evenNumber); //Prints 2

// The following code snippet tries to access the evenNumber variable outside of the for loop.
int? anotherEvenNumber = evenNumber ?? 0;
print(anotherEvenNumber); //Prints 2

// Now lets make the numbers list empty
List<int> emptyNumbers = [];
int? anotherEvenNumber2;

for (int number in emptyNumbers){
if (number % 2 == 0){
anotherEvenNumber2 = number;
break;
}
}

//Correct way to handle potential null value
int anotherEvenNumber3 = anotherEvenNumber2 ?? 0; 
print(anotherEvenNumber3); //Prints 0
```