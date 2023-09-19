# Kenya Core ImplementationGuide

A FHIR `ImplementationGuide` developed to dictate HIE in Kenya. 

The project has been bootstraped using the [`sushi`](https://github.com/FHIR/sushi) CLI tool.

## Prerequisites
- `jdk`
- `sushi`

    Install by running  `npm i -g fsh-sushi`
- `publisher`

    Install by running the `_updatePublisher` CLI scripts. This will download and install the publisher in the `input-cache` directory.
- `jekyll`

## Compiling & Publishing

To compile the `.fsh` files, you can simply run the following command:
```bash
sushi build
```

The CLI tool will generate `StructureDefinition` files for the profiles defined in your `.fsh` files and put them in the `fsh-generated/resources` directory.

To run the publisher, run the `_genonce` CLI script. This will put the published `ImplementationGuide` into the `output` directory.