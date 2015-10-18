% This is a comment

2 + 2.
2 + 2.0
"string".
[1, 2, 3].
[72, 97, 32, 72, 97, 32, 72, 97].
% "Ha Ha Ha"
 Var = 1.

 % Atoms and variables
 red.
 Pill = blue.
 Pill.

% Lists
[1, 2, 3].
[1, 2, "three"].
List = [1, 2, 3].

% Typles
{one, two, three}.
Origin = {0, 0}.

% Hashes
{name, "Spaceman Spiff"}.
{comic_strip, {name, "Calvin and Hobbes"}, {character, "Spaceman Spiff"}}.

% Pattern matching 
Person = {person, {name, "Agent Smith"}, {profession, "Killing programs"}}.
{person, {name, Name}, {profession, Profession}} = Person.
Name.
Profession.

[Head | Tail] = [1, 2, 3].
Head.
Tail.

[One, Two|Rest] = [1, 2, 3].
One.
Two.
Rest.

% Bit matching

W = 1.
X = 2.
Y = 3.
Z = 4.
All = <<W:3, X:3, Y:5, Z:5>>.




