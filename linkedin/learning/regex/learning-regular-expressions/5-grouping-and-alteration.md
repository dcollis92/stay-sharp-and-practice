# Learning Regular Expressions

## __Ch5. Grouping and Alteration__

----

### 5.1 Grouping Metacharacters

Transcript:
In this chapter we're going to learn about grouping and alternation. To do that we need to first learn two more metacharacters: the open and closed parentheses. Anything inside of them will be considered a grouped expression. The reason we're going to use those parentheses is to group portions of the expression so we can use them in a couple of different ways. The first is we can apply repetition operators to the group. The second is we can create a group of alternation expressions. We're going to learn those in future movies. And we can also capture the group for use in matching and replacing. Let's look at the first one of these, applying repetition operators to a group. So if we take the literal characters a, b, c, and we put parentheses around them we've now made a group. We can then apply one of our repetition operators to it to repeat that group of characters over and over again. So parentheses abc parentheses plus would match abc and also abcabcabc. You see, those same characters are being repeated. It's not just a single character now it's been repeated which we were doing before, now it's a group of characters that's being repeated. And it's not limited to just literal characters as well. You can have anything else inside that regular expression that you want including character sets and short hand. Another good use is to make something optional. Here you can see I've taken the word "in" and put it in parentheses, and put the question mark repetition metacharacter after it. So now it's going to match both independent and dependent. The i and the n are both optional. But they're optional together, as a group. If you were to make a single character optional, it's the same as if you didn't have the parentheses around it at all because we're just grouping a single thing. Even though it has the same meaning there may be times when this increases the readability of your regular expression. There's nothing wrong with doing it this way. I listed three use cases for grouping metacharacters. The first is to apply repetition operators. The second is alternation which we'll learn about later. The third is about capturing for replacing. Let's take a look at that. In order to demonstrate this we need to have some kind of a tool that's going to allow us to do find and replace. You may be able to do it inside a text editor, but these kinds of RegExr tools often have something that will allow us to do that. And RegExr does, it has something on here that says replace, if you click on it, it will now allow us to replace part of the text that we find. This might be an operation you would perform in a text editor or you might write it into a program that it would find it, capture it, and then replace the values. So let's see how capture works. Let's put a group here around this, so let's make the parentheses around the first set of digits, and then another set of parentheses around all of the rest except for that minus in between. We've now captured two different groups. Now we could apply repetition operators to those, but that's not what we're after here. We want to be able to find and replace and work with them. So it says that there's one match here, but the match actually has two different parts. And you can use $1 to grab just the part that matches that fist set. See, it tells me down here, five five five. If I do $2 I get the second group. So both of those are stored in this sort of variable, this $1, $2, it's each of those matching groups. And then I can use that to write what I want it to replace with. Let's say I wanted to change the phone number into parentheses: $1 space and then $2. Now I've reformatted the phone number to have parentheses around it. This is the kind of operation you can do by capturing it and using it for find and replace. Or I could put parentheses around both of these portions now number two matches this part, and number three matches that third part. Let's say I wanted to change the formatting here and make it a period, maybe I wanted to format it this way. Five, five, five, dot six, six, six dot seven, eight, nine, O. Or we could add text in front of it. The important part is that those parentheses create a group and it captures that group so that we can make use of it. Many regular expression engines allow us to use the dollar sign to refer to those capture groups. Some of them use a backslash. So if dollar sign doesn't work for you, you might also try a backslash in front of the number and see if that works. Now that we know how to use groups to apply repetition operators, and to capture for find and replace, the next thing is to learn how to use them for alternation.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter    | Meaning                        |
| :--------------- |:------------------------------ |
| `(`              | Start grouped expression       |
| `)`              | End grouped expression         |

### Grouping Metacharacters
  - Group portions of expressions
  - Apply repetion operators to a group
  - Create a group of alternation expressions
  - Captures group for use in matching and replacing
  - example:
    - `/(abc)+/` matches "abc" and "abcabcabc"
    - `/(in)?dependent/` matches "independent" and "dependent"
    - `/run(s)?/` = `/runs?/`
      - while the same meaning, it can increase the readability of your code


### regexr example:
  - text: 555-666-7890
    - regex: `/(\d{3})-\d{3}-(\d{4}/)`
      - replace tool: `$1` grabs 555
      - replace tool: `$2` grabs 666-7890
      - replace regex: `($1) $2`
        - returns: (555) 666-7890
    - alt regex: `/(\d{3})-(\d{3})-(\d{4}/)`
      - `$1` = 555
      - `$2` = 666
      - `$3` = 7890
      - so on and so on...
  - !!!CAUTION!!!
    - most regex engines support `$#`, however some support `\#`

----
