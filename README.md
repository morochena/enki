# Enki

Spaced repetition learning and memorization tool for the terminal.

## Install

Requirements:

- python 3.9+
- pip

```
pip install --upgrade enki-sr
```

## Getting Started / Usage

```bash
# display commands
enki --help

# add a new deck
enki add-deck software

# add a card to a deck
enki add-card software "What are two ways to mitigate software complexity?" "1. Simplify the code 2. Encapsulate the complexity"

# study all decks
enki study
```

## More Info

Enki has the concepts of decks and cards. A deck is simply a collection of cards defined by its filename. Decks are stored in csv format in the `~/.enki` directory. CSV has been chosen as the file format because it is easy to read, edit, backup and transfer.

A card has the following information:

- question
- answer
- next due date (defaults to today)
- number of times answered correctly
- number of times answered incorrectly
- interval (defaults to 1)

When you call `enki study` it will gather the relevant cards and display the ones that are due, in order of next due date.

If a card is remembered, the interval will be multipled by two. If forgotten, the interval will be halved. It will then be added to the next due date.

```
next_due_date = today + (interval * days)
```
