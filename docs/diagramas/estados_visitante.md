```mermaid
stateDiagram-v2
    [*] --> VisitandoSite
    VisitandoSite --> VisualizandoGatos : Acessar adoção
    VisitandoSite --> VisualizandoBrechó : Acessar brechó
    VisualizandoGatos --> DetalhesGato : Ver detalhes
    DetalhesGato --> Contato : Interesse no gato
    Contato --> [*]
