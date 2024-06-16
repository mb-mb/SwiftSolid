# **Swift SOLID Example Project**

![Swift](https://img.shields.io/badge/Swift-5.8-orange)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

Este projeto é um exemplo de implementação dos princípios SOLID em Swift. O objetivo é demonstrar como estruturar um projeto seguindo os princípios de design de software para garantir código modular, extensível e fácil de manter.

## **Índice**

- [Visão Geral](#visão-geral)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Executar](#como-executar)
- [Princípios SOLID](#princípios-solid)
  - [Single Responsibility Principle (SRP)](#single-responsibility-principle-srp)
  - [Open/Closed Principle (OCP)](#openclosed-principle-ocp)
  - [Liskov Substitution Principle (LSP)](#liskov-substitution-principle-lsp)
  - [Interface Segregation Principle (ISP)](#interface-segregation-principle-isp)
  - [Dependency Inversion Principle (DIP)](#dependency-inversion-principle-dip)
- [Testes](#testes)
- [Contribuição](#contribuição)
- [Licença](#licença)

## **Visão Geral**

Este projeto demonstra um sistema de cálculo de preços de produtos com diferentes tipos de impostos, seguindo os princípios SOLID:

- **Single Responsibility Principle (SRP)**
- **Open/Closed Principle (OCP)**
- **Liskov Substitution Principle (LSP)**
- **Interface Segregation Principle (ISP)**
- **Dependency Inversion Principle (DIP)**

## **Estrutura do Projeto**

```plaintext
📂 swift-solid-example/
│
├── 📂 Models/                           # Define a estrutura dos dados
│   └── 📄 Product.swift                 # Modelo de dados para um produto
│
├── 📂 Calculators/                      # Implementa diferentes estratégias de cálculo de impostos
│   ├── 📄 TaxCalculator.swift           # Interface para cálculo de impostos
│   ├── 📄 BasicTaxCalculator.swift      # Implementa cálculo básico de impostos
│   ├── 📄 ImportedTaxCalculator.swift   # Implementa cálculo de impostos para produtos importados
│   ├── 📄 ComplexTaxCalculator.swift    # Implementa cálculo de impostos complexos
│   └── 📄 LuxuryTaxCalculator.swift     # Implementa cálculo de impostos para produtos de luxo
│
├── 📂 Services/                         # Contém a lógica de negócios
│   └── 📄 PriceCalculator.swift         # Calcula o preço total combinando produto e imposto
│
├── 📂 Tests/                            # Contém testes unitários
│   ├── 📄 PriceCalculatorTests.swift    # Testa a funcionalidade do cálculo de preços
│   └── 📄 LuxuryTaxCalculatorTests.swift # Testa a funcionalidade do cálculo de impostos de luxo
│
├── 📄 main.swift                        # Ponto de entrada para a execução do programa
├── 📄 README.md                         # Documentação do projeto
└── 📄 LICENSE                           # Informações de licença
```


- **Models**: Define a estrutura do produto (`Product`).
- **Calculators**: Implementa diferentes estratégias de cálculo de impostos.
- **Services**: Contém a lógica de cálculo de preço total (`PriceCalculator`).
- **Tests**: Contém os testes unitários para garantir a funcionalidade do sistema.

## **Como Executar**

**Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/swift-solid-example.git
   cd swift-solid-example
   swift run
```

**Test project**
   ```bash
   swift test

```

## Princípios SOLID
## Single Responsibility Principle (SRP)
Cada classe no projeto tem uma única responsabilidade:

Product.swift: Define um produto com nome e preço.
TaxCalculator.swift: Define a interface para cálculos de impostos.
BasicTaxCalculator.swift, ImportedTaxCalculator.swift, ComplexTaxCalculator.swift, LuxuryTaxCalculator.swift: Implementam diferentes estratégias de cálculo de impostos.
PriceCalculator.swift: Calcula o preço total combinando o produto e o imposto.

## Open/Closed Principle (OCP)
As classes de calculadoras de imposto (BasicTaxCalculator, ImportedTaxCalculator, etc.) podem ser estendidas sem modificar as classes existentes. Novas estratégias de cálculo de impostos podem ser adicionadas criando novas classes que implementam TaxCalculator.

## Liskov Substitution Principle (LSP)
Todas as classes que implementam TaxCalculator podem ser usadas no lugar uma da outra sem alterar a funcionalidade do PriceCalculator.

## Interface Segregation Principle (ISP)
A interface TaxCalculator define métodos necessários para cálculo de impostos. 
A interface ExtendedTaxCalculator adiciona funcionalidades específicas adicionais,
garantindo que implementações não precisem suportar métodos que não utilizam.

## Dependency Inversion Principle (DIP)
PriceCalculator depende da abstração TaxCalculator, permitindo maior flexibilidade e desacoplamento.

## Testes
Testes unitários estão localizados na pasta Tests. Eles garantem que cada componente funciona conforme esperado:

## PriceCalculatorTests.swift
Testa a funcionalidade do cálculo de preço total com diferentes calculadoras de impostos.
LuxuryTaxCalculatorTests.swift: Testa a funcionalidade da calculadora de imposto de luxo.

## Contribuição
Contribuições são bem-vindas! Para contribuir, siga estas etapas:

Faça um fork do repositório.
- Crie uma branch: git checkout -b my-feature-branch.
- Faça suas alterações e commit: git commit -m 'Add some feature'.
- Envie para a branch original: git push origin my-feature-branch.
- Crie um Pull Request.

## Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
