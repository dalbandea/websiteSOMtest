# Hugo quick start

https://gohugo.io/getting-started/quick-start/

# Math support

- Follow https://geoffruddock.com/math-typesetting-in-hugo/ , where the
  directories refer to the directories in the theme.
    - Maybe it just works out of the box in SOM server

# Render static website

- To deploy to ific server
`hugo && rsync -avz --delete public/ daljor@cruzdos.ific.uv.es:~/WWW/`

- I had to add `relativeURLs = true` to `config.toml` so that the website
  rendered correctly. See https://stackoverflow.com/questions/62460362/hugo-page-isnt-rendering-correctly
    - Edito: creo que simplemente hay que poner `baseurl =
    "https://ific.uv.es/~daljor/"` en baseURL, y los enlaces relativos los
    calcula a partir de eso. Notar que los enlaces relativos nacen realmente de
    la carpeta `public/`, donde está el código real compilado de la página web.


# Image resizing

- Image resizing is not natively supported by Markdown. The solution would be to
  put raw HTML into Markdown, but it does not work out of the box with hugo: I
  had to follow https://anaulin.org/blog/hugo-raw-html-shortcode/
    - Add a shortcode template to your site in `layouts/shortcodes/rawhtml.html`
    with the content
    ```
    <!-- raw html -->
    {{.Inner}}
    ```
    This template tells Hugoto simply render the inner content passed to your
    shortcode directly into the HTML of your site.
    - Then you can use this code to insert an image
    ```html
    {{< rawhtml >}}
        <img src="/research-contents/cosmology/images/Bullet_Cluster.png"
        alt="Universe composition" width="350"/>
    {{< /rawhtml >}}
    ```
    - See also https://discourse.gohugo.io/t/is-it-possible-to-insert-html-code-in-markdown-content/4867/6


# Members

- There are templates stored in `.member1.md`, `.member2.md` and `.member3.md`.
- It seems that the member photos have to be in `static/img/portraits/`. I tried
  to put them on `content/member/photos/` but I don't know how to link it.
- The order of members is set by the numbering in the property `title: "Member 2"`.
    - This ordering is version ordering: 10 comes before 2.
    - Can just do normal ordering but filling 3 decimals with 0s: 001, 002,
    003...


# Parsing calendar

- For bash, see https://stackoverflow.com/questions/37334681/parsing-ics-file-with-bash
- For python, see https://stackoverflow.com/questions/45995040/parse-ics-file-in-python-icalendar-package-doesnt-return-start-end-date-and-ot

Probably the easiest is to go with python. Any library can be easily installed
in the som cluster with miniconda, which does not require root permissions.

```python
from icalendar import Calendar, Event

g = open('cal.ics','rb')
gcal = Calendar.from_ical(g.read())

for component in gcal.walk():
   a = component.get('description')
   print(a)
```
