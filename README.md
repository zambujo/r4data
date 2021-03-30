
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Research programmes for development

<!-- badges: start -->
<!-- badges: end -->

The goal of this project is to try to map the institutes involved in the
Swiss Programme for Research on Global Issues for Development
([r4d](http://www.r4d.ch/)) on the world map.

### Data dictionary 🚧

#### `grants`

> Subset of `P3_GrantExport.csv` from
> [P3](http://p3.snf.ch/Pages/DataAndDocumentation.aspx).

| Variable            | Type      | Description                     |
|:--------------------|:----------|:--------------------------------|
| project\_number     | character | P3 grant id                     |
| project\_title      | character | P3 grant title                  |
| funding\_instrument | factor    | `r4d`, `SPIRIT`, etc.           |
| start\_date         | date      | `%b %Y`                         |
| end\_date           | date      | `%b %Y`                         |
| approved\_amount    | integer   | Grant size in CHF               |
| running             | boolean   | Inform whether grant is running |

#### affiliation-role

| Variable          | Type      | Description          |
|:------------------|:----------|:---------------------|
| project\_number   | character | P3 grant id          |
| person\_id\_snsf  | character | P3 person id         |
| role              | factor    | [Project as](role)   |
| institute\_number | character | P3 institute number  |
| institute\_name   | character | [Details](instname)  |
| institute\_place  | character | [Details](instpalce) |

#### affiliation-gmaps

| Variable           | Type      | Description            |
|:-------------------|:----------|:-----------------------|
| institute\_number  | character | P3 institute number    |
| institute\_address | character | P3 institute address   |
| gmaps\_id          | character | Google maps id         |
| gmaps\_lat         | numeric   | Latitude               |
| gmaps\_lng         | numeric   | Longitude              |
| gmaps\_plus        | character | Google maps plus code  |
| gmaps\_addr        | character | Address on google maps |
| gmaps\_name        | character | Name on google maps    |
| gmaps\_types       | character | Types on google maps   |
| gmaps\_status      | character | Status on google maps  |

## Simplified Tree

    .
    ├── DESCRIPTION
    ├── LICENSE
    ├── install.R
    ├── data-raw
    │   ├── gm-data.csv
    │   ├── r4d-affiliations.csv
    │   ├── r4d-grants-in-p3.csv
    │   └── r4d-people-in-p3.csv
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
