<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/nhlapi-graphql/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the nhlapi-graphql. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">nhlapi-graphql</h1>

  <p align="center">
  Rails API consuming 3rd party NHL API and exposing the data via a microservice using GraphQL
    <br />
    <img src="app/assets/images/me_hockey.jpg" alt="alt_text">
    <br />
    <a href="https://graphql.org/"><strong>Explore the GraphQL docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/marchandmd/nhlapi-graphql/issues">Report Bug</a>
    ·
    <a href="https://github.com/marchandmd/nhlapi-graphql/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This project is a microservice built as a greenfield project. The official, undocumented NHL API is being consumed by a Service object using the Faraday gem. No API key or credentials are required.

That data is then being passed through to a Facade object, where the JSON is being processed into POROs.

Finally, that Facade is being used in graphQL queries. Since the NHL API doesn't permit PUT, PATCH, POST or DELETE capabilities, there will be no mutations.


What did I learn building this:

- practicing VIM basics
- greater understanding of graphQL Types and QueryTypes
- TDD
- Graphiql interface and GraphQL query structure


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

-   [![Ruby][ruby.com]][ruby-url]
-   [![Rspec][rspec.com]][rspec-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

ruby v2.7.4

### Installation

1. Clone the repo
    ```sh
    git clone https://github.com/marchandmd/nhlapi-graphql.git
    ```
2. Install packages
    ```sh
    bundle
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

1. `cd` into the directory
2. `rails s`
3. Navigate to `localhost:3000/graphiql`
4. Query the NHL API! (query format to be added to README)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## GraphQL Queries

### Get all teams

```
{
  teams {
    id
    name
    link
  }
}
```
### Get one team

```
{
  team(id: "1") {
    id
    name
    link
  }
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- ROADMAP -->

## Roadmap

- README
- [ ] add additional endpoints


See the [open issues](https://github.com/marchandmd/nhlapi-graphql/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/nhlapi-graphql](https://github.com/marchandmd/nhlapi-graphql)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/nhlapi-graphql.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/nhlapi-graphql/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/nhlapi-graphql.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/nhlapi-graphql/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/nhlapi-graphql.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/nhlapi-graphql/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/nhlapi-graphql.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/nhlapi-graphql/issues
[license-shield]: https://img.shields.io/github/license/marchandmd/nhlapi-graphql.svg?style=for-the-badge
[license-url]: https://github.com/marchandmd/nhlapi-graphql/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/mmarchand1/
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/ruby-v2.7.4-red
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.12-success
[rspec-url]: https://rspec.info/documentation/
