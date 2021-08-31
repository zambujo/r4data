
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Research programmes for development

<!-- badges: start -->
<!-- badges: end -->

The goal of this project is to try to map the institutes involved in the
Swiss Programme for Research on Global Issues for Development
([r4d](http://www.r4d.ch/)) on the world map.

### Old schema

#### `projects.csv`

> Subset of `P3_GrantExport.csv` from
> [P3](http://p3.snf.ch/Pages/DataAndDocumentation.aspx).

| Attribute           | Description                     |
|:--------------------|:--------------------------------|
| project\_number     | P3 grant id                     |
| project\_title      | P3 grant title                  |
| funding\_instrument | `r4d`, `SPIRIT`, etc.           |
| start\_date         | `%b %Y`                         |
| end\_date           | `%b %Y`                         |
| approved\_amount    | Grant size in CHF               |
| running             | Inform whether grant is running |
| institution         | coordinating institution        |
| university          | coordinating university         |

#### `people.csv`

| Attribute         | Description          |
|:------------------|:---------------------|
| project\_number   | P3 grant id          |
| person\_id\_snsf  | P3 person id         |
| role              | [Project as](role)   |
| institute\_name   | [Details](instname)  |
| institute\_place  | [Details](instpalce) |
| institute\_id\_p3 | P3 institute ID      |

#### `gmaps.csv`

| Attribute     | Description         |
|:--------------|:--------------------|
| institute\_id | P3 institute number |
| gmaps\_id     | Google maps id      |
| gmaps\_lat    | Latitude            |
| gmaps\_lng    | Longitude           |
| gmaps\_name   | Name on google maps |
| gmaps\_addr   | Name on google maps |

#### `disciplines.csv`

| Attribute       | Description          |
|:----------------|:---------------------|
| project\_number | P3 grant id          |
| disciplines     | P3 discipline name   |
| tier            | Discipline hierarchy |

### Schema for Research earth

#### `tags.csv`

| Attribute  | Description       |
|:-----------|:------------------|
| tags\_id   | Keyword unique ID |
| tags\_name | Keyword name      |

#### `disciplines.csv`

| Attribute         | Description          |
|:------------------|:---------------------|
| disciplines\_id   | P3 grant id          |
| disciplines\_name | P3 discipline name   |
| tier              | Discipline hierarchy |

#### `funders.csv`

| Attribute     | Description                               |
|:--------------|:------------------------------------------|
| funder\_id    | P3 grant id                               |
| funders\_name | Family and first names of person in grant |
| snsf          | snsf person id                            |
| role          | [Project as](role)                        |

> **snsf** is mislieading **funders\_name** is ambiguous

#### `projects.csv`

| Attribute                   | Description                        |
|:----------------------------|:-----------------------------------|
| project\_id                 | P3 grant id                        |
| project\_name               | P3 grant title                     |
| contact\_person             | PI first and last names            |
| email                       | ??                                 |
| start\_date                 | `%b-%Y`                            |
| end\_date                   | `%b-%Y`                            |
| approved\_amount            | Grant size in CHF                  |
| project\_description        | `r4d`, `SPIRIT`, etc. (instrument) |
| transdisciplinary           | P3 grant title                     |
| projects\_disciplines\_id   | list of P3 discipline ids          |
| tag\_id                     | list generated keyword ids         |
| projects\_funder\_id        | list of funders                    |
| projects\_organizations\_id | list of organisations              |

#### `organizations.csv`

| Attribute                      | Description                         |
|:-------------------------------|:------------------------------------|
| organizations\_id              | P3 institute number (gmap.inst\_id) |
| organizations\_name            | [Details](instname)                 |
| lat                            | Latitude (gmap)                     |
| lng                            | Longitude (gmap)                    |
| gmaps\_id                      | Google maps id                      |
| address                        | Name on google maps                 |
| country                        | gmaps\_coutry                       |
| website                        | to be collected                     |
| organizations\_disciplines\_id | list of disciplines related to org  |
| organizations\_funder\_id      | list of linked funders              |
| partner\_organizations\_id     | list of linked orgs                 |
| organizations\_project\_id     | list of linked projects             |

Explore the [raw
data](https://flatgithub.com/zambujo/r4data/tree/research-earth).

## Simplified Tree

    .
    ├── DESCRIPTION
    ├── LICENSE
    ├── install.R
    ├─ data
    │   ├── disciplines.csv
    │   ├── gmaps.csv
    │   ├── people.csv
    │   ├── projects.csv
    │   ├── research_earth
    │   │   ├── disciplines.csv
    │   │   ├── funders.csv
    │   │   ├── organizations.csv
    │   │   ├── projects.csv
    │   │   └── tags.csv
    │   └── schema.svg
    ├── docs
    │   └── index.html
    ├── inst
    │   └── extdata
    │       ├── p3-tables.yml
    │       └── screenshot.jpg
    ├── README.md
    ├── README.Rmd
    └── Rmd
        ├── explore.Rmd
        └── gather.Rmd

## License

Distributed under the MIT License.

## Acknowledgments

See list of packages in [DESCRIPTION file](./DESCRIPTION).
