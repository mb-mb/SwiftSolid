Swift SOLID Example Project


Este projeto é um exemplo de implementação dos princípios SOLID em Swift. O objetivo é demonstrar como estruturar um projeto seguindo os princípios de design de software para garantir código modular, extensível e fácil de manter.

Índice
Visão Geral
Estrutura do Projeto
Como Executar
Princípios SOLID
Single Responsibility Principle (SRP)
Open/Closed Principle (OCP)
Liskov Substitution Principle (LSP)
Interface Segregation Principle (ISP)
Dependency Inversion Principle (DIP)
Testes
Contribuição
Licença
Visão Geral
Este projeto demonstra um sistema de cálculo de preços de produtos com diferentes tipos de impostos, seguindo os princípios SOLID:

Single Responsibility Principle (SRP)
Open/Closed Principle (OCP)
Liskov Substitution Principle (LSP)
Interface Segregation Principle (ISP)
Dependency Inversion Principle (DIP)
Estrutura do Projeto
css
Copiar código
ProjectRoot
│
├── Models
│   ├── Product.swift
│
├── Calculators
│   ├── TaxCalculator.swift
│   ├── BasicTaxCalculator.swift
│   ├── ImportedTaxCalculator.swift
│   ├── ComplexTaxCalculator.swift
│   ├── LuxuryTaxCalculator.swift
│
├── Services
│   ├── PriceCalculator.swift
│
├── Tests
│   ├── PriceCalculatorTests.swift
│   ├── LuxuryTaxCalculatorTests.swift
│
├── main.swift
├── README.md
├── LICENSE
Models: Define a estrutura do produto (Product).
Calculators: Implementa diferentes estratégias de cálculo de impostos.
Services: Contém a lógica de cálculo de preço total (PriceCalculator).
Tests: Contém os testes unitários para garantir a funcionalidade do sistema.
Como Executar
Clone o repositório:

bash
Copiar código
git clone https://github.com/seu-usuario/swift-solid-example.git
cd swift-solid-example
Abra o projeto no Xcode:

bash
Copiar código
open swift-solid-example.xcodeproj
Execute o projeto:

Use o Xcode para compilar e rodar o projeto.

Ou, no terminal:

bash
Copiar código
swift run
Rodar os testes:

Use o Xcode: Menu Product > Test ou pressione Command + U.

Ou, no terminal:

bash
Copiar código
swift test
Princípios SOLID
Single Responsibility Principle (SRP)
Cada classe no projeto tem uma única responsabilidade:

Product.swift: Define um produto com nome e preço.
TaxCalculator.swift: Define a interface para cálculos de impostos.
BasicTaxCalculator.swift, ImportedTaxCalculator.swift, ComplexTaxCalculator.swift, LuxuryTaxCalculator.swift: Implementam diferentes estratégias de cálculo de impostos.
PriceCalculator.swift: Calcula o preço total combinando o produto e o imposto.
Open/Closed Principle (OCP)
As classes de calculadoras de imposto (BasicTaxCalculator, ImportedTaxCalculator, etc.) podem ser estendidas sem modificar as classes existentes. Novas estratégias de cálculo de impostos podem ser adicionadas criando novas classes que implementam TaxCalculator.

Liskov Substitution Principle (LSP)
Todas as classes que implementam TaxCalculator podem ser usadas no lugar uma da outra sem alterar a funcionalidade do PriceCalculator.

Interface Segregation Principle (ISP)
A interface TaxCalculator define métodos necessários para cálculo de impostos. A interface ExtendedTaxCalculator adiciona funcionalidades específicas adicionais, garantindo que implementações não precisem suportar métodos que não utilizam.

Dependency Inversion Principle (DIP)
PriceCalculator depende da abstração TaxCalculator, permitindo maior flexibilidade e desacoplamento.

Testes
Testes unitários estão localizados na pasta Tests. Eles garantem que cada componente funciona conforme esperado:

PriceCalculatorTests.swift: Testa a funcionalidade do cálculo de preço total com diferentes calculadoras de impostos.
LuxuryTaxCalculatorTests.swift: Testa a funcionalidade da calculadora de imposto de luxo.
Para rodar os testes:

bash
Copiar código
swift test
Contribuição
Contribuições são bem-vindas! Para contribuir, siga estas etapas:

Faça um fork do repositório.
Crie uma branch: git checkout -b my-feature-branch.
Faça suas alterações e commit: git commit -m 'Add some feature'.
Envie para a branch original: git push origin my-feature-branch.
Crie um Pull Request.
Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

