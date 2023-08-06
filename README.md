# Weekly Update (Template) Generator
---

Title's pretty self-explanatory. It's a simple script that let's you generate a template for a summarized weekly report for whatever reason you might need it for.
I made this specifically so that I don't have to spend more time than necessary to insert the dates and ensure the format's alright every week.

## Template
This is pretty much what it throws out in a file called `sample.md`.

Note:
I've purposely set the file creation to append instead of write 'cause it's easy to overwrite your update otherwise.

```
📆 Weekly Update  📆

07 August (Monday) | X Hours
* Main Update
  * Any Details

08 August (Tuesday) | X Hours
* Main Update
  * Any Details

09 August (Wednesday) | X Hours
* Main Update
  * Any Details

10 August (Thursday) | X Hours
* Main Update
  * Any Details

11 August (Friday) | X Hours
* Main Update
  * Any Details

Total Hours: X hours
```

## How to use
Either `chmod +x path_to_the_script/update_generator.rb` or call `ruby path_to_the_script/update_generator.rb`

## Requirements
- Ruby (any version works)

