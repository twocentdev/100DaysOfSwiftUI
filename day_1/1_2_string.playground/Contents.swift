var professionalCategry = "Engineering solutions manager" //Strings are contained between double quotes (")
var alias = "Carl Johson \"CJ\"" //You can include double quotes inside a string by usinb (\")
var text = """
This is a full text
divided into
multiple lines.
""" //You can write multi-line strings by using the three double quotes togueter (""")

let textLength = text.count //You can access some properties from a string like length.
print(textLength)

print(alias.uppercased()) //You can allso apply some functions to a string
print(text.hasPrefix("Those")) //Some functions require some input params
print(text.hasSuffix("lines."))
