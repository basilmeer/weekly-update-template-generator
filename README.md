# Weekly Update (Template) Generator

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
(or you can copy it from the above snippet)

## How to use
- Either `chmod +x path_to_the_script/update_generator.rb`; or
- Run `ruby path_to_the_script/update_generator.rb`

By default, it uses the current day to figure out the week start and the week end. But you can pass a Ruby parseable format such as `dd/mm/yyy` as an arg for past or future dates.
e.g. `update_generator.rb 31/07/2023` and it will give you template from 31st July to 4th July

## Requirements
- Ruby (any version works)

