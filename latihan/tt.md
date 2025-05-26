```mermain
flowchart TD
%% Nodes
A("Project Idea"):::green
B("Initial Planning"):::orange
C("Detailed Design <br> & <br> Requirements"):::blue
D{"Decision: Continue or Stop?"}:::yellow
E("Development Phase"):::pink
F("Testing Phase"):::purple
G("Deployment"):::green
H("Feedback and Improvement"):::orange

%% Edges
A --> B --> C --> D
D -- Continue --> E --> F --> G
D -- Stop --> H
G --> H
H --> B

%% Styling
classDef green fill:#B2DFDB,stroke:#00897B,stroke-width:2px;
classDef orange fill:#FFE0B2,stroke:#FB8C00,stroke-width:2px;
classDef blue fill:#BBDEFB,stroke:#1976D2,stroke-width:2px;
classDef yellow fill:#FFF9C4,stroke:#FBC02D,stroke-width:2px;
classDef pink fill:#F8BBD0,stroke:#C2185B,stroke-width:2px;
classDef purple fill:#E1BEE7,stroke:#8E24AA,stroke-width:2px;

```
