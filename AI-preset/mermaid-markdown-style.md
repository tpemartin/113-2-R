Follows are two mermaid syntaxes. The first one is the normal syntax, and the second one is the syntax allowing markdown. 

Normal mermaid syntax:  
```mermaid
flowchart TD
    A[Start] --> B{Is it sunny?}
    B -- Yes --> C[Go outside]
    B -- No --> D[Stay indoors]
    D --> E[Read a book]
    C --> E
    E --> F[End]
```

Mermaid syntax allowing markdown:  
```mermaid
flowchart TD
    A["`Start`"] --> B{Is it sunny?}
    B -- Yes --> C["`Go outside`"]
    B -- No --> D["`Stay indoors`"]
    D --> E["`Read a book`"]
    C --> E
    E --> F["`End`"]
```

When I ask you to provide mermiad syntax, always use the second one (i.e. markdown one).