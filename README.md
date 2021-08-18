
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

| Attribute           | Type      | Description                     |
|:--------------------|:----------|:--------------------------------|
| project\_number     | character | P3 grant id                     |
| project\_title      | character | P3 grant title                  |
| funding\_instrument | factor    | `r4d`, `SPIRIT`, etc.           |
| start\_date         | date      | `%b %Y`                         |
| end\_date           | date      | `%b %Y`                         |
| approved\_amount    | integer   | Grant size in CHF               |
| running             | boolean   | Inform whether grant is running |
| institution         | character | coordinating institution        |
| university          | character | coordinating university         |

#### `people.csv`

| Attribute         | Type      | Description          |
|:------------------|:----------|:---------------------|
| project\_number   | character | P3 grant id          |
| person\_id\_snsf  | character | P3 person id         |
| role              | factor    | [Project as](role)   |
| institute\_name   | character | [Details](instname)  |
| institute\_place  | character | [Details](instpalce) |
| institute\_id\_p3 | character | P3 institute ID      |

#### `gmaps.csv`

| Attribute     | Type      | Description         |
|:--------------|:----------|:--------------------|
| institute\_id | character | P3 institute number |
| gmaps\_id     | character | Google maps id      |
| gmaps\_lat    | numeric   | Latitude            |
| gmaps\_lng    | numeric   | Longitude           |
| gmaps\_name   | character | Name on google maps |
| gmaps\_addr   | character | Name on google maps |

#### `disciplines.csv`

| Attribute       | Type      | Description          |
|:----------------|:----------|:---------------------|
| project\_number | character | P3 grant id          |
| disciplines     | character | P3 discipline name   |
| tier            | integer   | Discipline hierarchy |

### New schema

#### `disciplines.csv`

| Attribute         | Type      | Description          |
|:------------------|:----------|:---------------------|
| disciplines\_id   | character | P3 grant id          |
| disciplines\_name | character | P3 discipline name   |
| tier              | integer   | Discipline hierarchy |

#### `funders.csv`

| Attribute     | Type      | Description        |
|:--------------|:----------|:-------------------|
| funder\_id    | integer   | P3 grant id        |
| funders\_name | character | ??                 |
| snsf          | integer   | ??                 |
| role          | character | [Project as](role) |

#### `projects.csv`

| Attribute                   | Type      | Description                        |
|:----------------------------|:----------|:-----------------------------------|
| project\_id                 | integer   | P3 grant id                        |
| project\_name               | character | P3 grant title                     |
| contact\_person             | character | PI first and last names            |
| email                       | character | ??                                 |
| start\_date                 | date      | `%b %Y`                            |
| end\_date                   | date      | `%b %Y`                            |
| approved\_amount            | integer   | Grant size in CHF                  |
| project\_description        | character | `r4d`, `SPIRIT`, etc. (instrument) |
| transdisciplinary           | boolean   | P3 grant title                     |
| projects\_disciplines\_id   | character | list of P3 discipline ids          |
| tag\_id                     | character | list generated keyword ids         |
| projects\_funder\_id        | character | list of funders                    |
| projects\_organizations\_id | character | list of organisations              |

#### `organizations.csv`

| Attribute                      | Type      | Description                         |
|:-------------------------------|:----------|:------------------------------------|
| organizations\_id              | character | P3 institute number (gmap.inst\_id) |
| organizations\_name            | character | [Details](instname)                 |
| lat                            | numeric   | Latitude (gmap)                     |
| lng                            | numeric   | Longitude (gmap)                    |
| gmaps\_id                      | character | Google maps id                      |
| address                        | character | Name on google maps                 |
| country                        | character | gmaps\_coutry                       |
| website                        | character | to be collected                     |
| organizations\_disciplines\_id | character | list of disciplines related to org  |
| organizations\_funder\_id      | character | list of linked funders              |
| partner\_organizations\_id     | character | list of linked orgs                 |
| organizations\_project\_id     | character | list of linked projects             |

Explore the [raw data](https://flatgithub.com/zambujo/r4data).

### Schema

![](./data/schema.svg)

## Simplified Tree

    .
    ├── DESCRIPTION
    ├── LICENSE
    ├── install.R
    ├── data
    │   ├── disciplines.csv
    │   ├── gmaps.csv
    │   ├── people.csv
    │   ├── projects.csv
    │   └── schema.svg
    ├── docs
    │   └── index.html
    ├── inst
    │   └── extdata
    │       └── p3-tables.yml
    ├── README.md
    └── Rmd
        ├── explore.Rmd
        └── gather.Rmd

## License

Distributed under the MIT License.

## Acknowledgments

See list of packages in [DESCRIPTION file](./DESCRIPTION).
