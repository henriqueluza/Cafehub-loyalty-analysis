# CafeHub Loyalty Analysis

## Descrição

Este projeto realiza análise de dados de clientes e programa de fidelidade para a CafeHub, uma cafeteria fictícia. O objetivo é processar, filtrar e analisar dados de compras e pontos de fidelidade dos clientes.

## Estrutura do Projeto

```
CafeHub Loyalty Analysis/
├── projects/
│   └── cafe_analysis.R      # Script principal de análise
├── customer_data.csv         # Dados dos clientes
├── loyalty_data.csv          # Dados do programa de fidelidade
└── README.md
```

## Requisitos

- R (versão 4.0 ou superior)
- Pacotes R:
  - `readxl`
  - `jsonlite`
  - `dplyr`

## Instalação

```r
install.packages(c("readxl", "jsonlite", "dplyr"))
```

## Funcionalidades

### 1. Carregamento e Limpeza de Dados
- Importação de arquivos CSV
- Conversão de tipos de dados (datas, numéricos)
- Remoção de valores nulos

### 2. Análise de Clientes
- **Above_30**: Filtra clientes com idade acima de 30 anos
- **df_filtered**: Filtra clientes do sexo feminino que compraram Smoothies
- **df_selected**: Seleciona colunas específicas (Age, Product)

### 3. Programa de Fidelidade
Classificação de clientes por tier baseado em pontos:
| Pontos | Tier |
|--------|------|
| ≥ 500  | Gold |
| ≥ 200  | Silver |
| < 200  | Bronze |

### 4. Exportação de Dados
- `revised_customer_data.csv`: Dados filtrados de clientes
- `revised_loyalty_data.csv`: Dados de fidelidade com tiers
- `merged_data.csv`: Dados combinados de clientes e fidelidade

## Como Executar

```bash
cd "/home/henriqueluza/Projetos Programação/R/CafeHub Loyalty Analysis/projects"
Rscript cafe_analysis.R
```

Ou no RStudio, abra o arquivo `cafe_analysis.R` e execute o script.

## Autor

Henrique Luza

## Licença

Este projeto é para fins educacionais.