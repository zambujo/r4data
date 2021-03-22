
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Research for development

<!-- badges: start -->
<!-- badges: end -->

The goal of this project is to try to map the institutes involved in
[r4d](http://www.r4d.ch/) projects on a world map.

### Data dictionary 🚧

#### grant-selection

| Variable            | Type      | Description           |
|:--------------------|:----------|:----------------------|
| project\_number     | character | P3 grant id           |
| project\_title      | character | P3 grant title        |
| funding\_instrument | factor    | `r4d`, `SPIRIT`, etc. |
| start\_date         | date      | `%b %Y`               |
| end\_date           | date      | `%b %Y`               |
| approved\_amount    | integer   | Grant size in CHF     |

#### affiliation-lookup

| Variable          | Type      | Description          |
|:------------------|:----------|:---------------------|
| project\_number   | character | P3 grant id          |
| person\_id\_snsf  | character | P3 person id         |
| role              | factor    | [Project as](role)   |
| institute\_number | character | 🚧                    |
| institute\_name   | character | [Details](instname)  |
| institute\_place  | character | [Details](instpalce) |

#### r4d-people-in-p3

🚧

#### gm-data

🚧

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
