reserve words:

exif, views, rating, score, visibility, resolution, user, md5, hash (non-specific), width, height, source, updated, gaussian, parent

tag rules:

double space separates all tags, single space allowed in tag name, must be able to be stripped, case insensitive.

~tag1 -> OR operator (broken)

tag1~ -> fuzzy tag search... do we really need this?  or can I get away with just doing soundex within a certain distance?

ta*1 -> anything between ta() and ending with 1

md5:foo (exactly foo)
md5:foo* (starts with foo, ends with anything)

-negate tag

Step 1 -> Split to tags
Step 2 -> Build Sub-Query for conditionals / comparables
Step 3 -> Build Mandatory Tag List (with Exclusions)
Step 4 -> Add fuzzy criteria.

Gaussian MUST be comparable, using OpenCV gaussian blur calculation.
