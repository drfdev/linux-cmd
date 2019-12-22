**Bash loop**

Create files:

directory: **files**, files inside: **file_1.txt**, **file_2.txt**

---

Script:

```bash
#!/bin/bash
$ for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done
```

Output:

```
Welcome 1 times
Welcome 2 times
Welcome 3 times
Welcome 4 times
Welcome 5 times
```

---
Script:

```bash
#!/bin/bash
$ for i in {1..5}
do
   echo "Welcome $i times"
done
```

Output:

```
Welcome 1 times
Welcome 2 times
Welcome 3 times
Welcome 4 times
Welcome 5 times
```

---

{start .. end .. increment}

Script:

```bash
#!/bin/bash
for i in {0..10..2}
do
    echo "Welcome $i times"
done
```

Output:

```
Welcome 0 times
Welcome 2 times
Welcome 4 times
Welcome 6 times
Welcome 8 times
Welcome 10 times
```
---

Seq command:
* seq _lasr_
* seq _first_ _last_
* seq _first_ _increment_ _lasr_

Script:

```bash
#!/bin/bash
for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done
```

Output:

```
Welcome 1 times
Welcome 3 times
Welcome 5 times
Welcome 7 times
Welcome 9 times
Welcome 11 times
Welcome 13 times
Welcome 15 times
Welcome 17 times
Welcome 19 times
```

---

Loop with three-expression:

(( _exp1_; _exp2_; _exp3_))

exp1: initilizer

exp2: loop-test or condition

exp3: counting expression

Script:
```bash
#!/bin/bash
for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done
```

Output:

```
Welcome 1 times
Welcome 2 times
Welcome 3 times
Welcome 4 times
Welcome 5 times
```

Infinity loop:

```bash
#!/bin/bash
for (( ; ; ))
do
   echo "infinite loops [ hit CTRL+C to stop]"
done
```

---

**breack** and **continue**

Break script example:

```bash
for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (disaster-condition)
  then
	break       	   #Abandon the loop.
  fi
  statements3          #While good and, no disaster-condition.
done
```

Continue script example:

```bash
for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (condition)
  then
	continue   #Go to next iteration of I in the loop and skip statements3
  fi
  statements3
done
```

---

Loop by strings. Script:

```bash
#!/bin/bash
cities="Tokyo London Paris Dubai Mumbai"
for city in $cities
do
    echo "CITY: $city"
done
```

Output:

```
CITY: Tokyo
CITY: London
CITY: Paris
CITY: Dubai
CITY: Mumbai
```

---

Loop by array elements. Script:

```bash
#!/bin/bash
FRUITS=('Apple' 'Mango' 'Strawberry' 'Orange' 'Banana')
for item in "${FRUITS[@]}";
do
  echo "FRUIT: $item"
done
```

Output:

```
FRUIT: Apple
FRUIT: Mango
FRUIT: Strawberry
FRUIT: Orange
FRUIT: Banana
```

---

Breack and continue examples (again, yes):


Break:

```bash
#!/bin/bash
for city in Tokyo London Paris Dubai Mumbai
do
  if [[ "$city" == 'Dubai' ]]; then
    break
  fi
  echo "CITY: $city"
done
echo "Loop Ended"
```

Output:

```
CITY: Tokyo
CITY: London
CITY: Paris
Loop Ended
```

Continue:

```bash
#!/bin/bash
for city in Tokyo London Paris Dubai Mumbai
do
  if [[ "$city" == 'Dubai' ]]; then
    continue
  fi
  echo "CITY: $city"
done
echo "Loop Ended"
```

Output:

```
CITY: Tokyo
CITY: London
CITY: Paris
CITY: Mumbai
Loop Ended
```

---

Loop by files. Scripts:

```bash
#!/bin/bash
for file in ./files/*
do
  echo "Filename: $file"
done
```

Output:

```
Filename: ./files/file_1.txt
Filename: ./files/file_2.txt
```

Another example:
```bash
#!/bin/bash
for file in ./files/*2*
do
  echo "Filename: $file"
done
```

Output:

```
Filename: ./files/file_2.txt
```
