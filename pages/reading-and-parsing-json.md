=head1 Reading and parsing JSON in general and specifically in Rust 🦀
=timestamp 1733595377
=tags JSON, Rust

Tomorrow I am going to give a presentation about [Reading and parsing JSON in 🦀 Rust](https://rust.org.il/events/2024-12-08-reading-json-files).

As a last minute preparation I'd like to go over the main cases I need to cover. Maybe some of my readers will have ideas what else to show.

* ❓What is [JSON](https://www.json.org/)❓

* 🎃 Reading an arbitrary JSON file without knowing it internal structure. Regardless if the main element is an object or an array. (a mapping or a list)
* 🤖 Reading a JSON which is a plain array of values.
* 👹 Reading a JSON which a single level object, key-value pairs of arbitrary values of some known type. e.g string-string pairs or string-number pairs.
* 👿 Defining some of the fields in a JSON object.
* 👾 Defining all the fields of the JSON object and making sure the JSON we read in does not have any extra fields.
* 👽 Reading a JSON where a certain field can either have a single value or a vector as a value. In some unfortunate case we might have both `language: English` and `language: [English, Spanish]` in different files.
* 🥷 Making sure all the expected fields exist in the file.
* 🤡 Reading JSON where the field name is not valid attribute in our language. e.g. Most programming language will not allow an a variable or an attribute to have a dash `-` in them. So a field called `runs-on` cannot be mapped directly to an attribute.

* 🧶 Reading a [JSON-Lines](https://jsonlines.org/) file with multiple JSON structures where each JSON structure is on a separate physical row.


![](/img/json.png)
