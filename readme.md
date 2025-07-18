🧩 Descrição do Projeto
Este repositório contém o esquema conceitual de um sistema de e-commerce, desenvolvido como parte de um desafio de modelagem de dados. O objetivo é representar, de forma estruturada, as principais entidades, relacionamentos e atributos necessários para o funcionamento de um sistema de compras online, com foco na clareza e consistência das regras de negócio.

O projeto foi refinado a partir de um modelo inicial, incorporando novos requisitos que aumentam a complexidade e o realismo do banco de dados, conforme descrito abaixo.

🎯 Objetivo do Desafio
Refinar o modelo de dados, considerando os seguintes pontos:

👤 Cliente PJ e PF
Um cliente pode ser do tipo Pessoa Física (PF) ou Pessoa Jurídica (PJ).

Uma conta não pode conter os dois tipos simultaneamente.

Informações específicas são armazenadas de forma separada para PF (CPF, data de nascimento) e PJ (CNPJ, razão social).

💳 Pagamentos
Um cliente pode ter mais de uma forma de pagamento cadastrada.

Cada forma de pagamento está associada ao cliente e contém dados como tipo (cartão, boleto, Pix), número (quando aplicável), validade, etc.

🚚 Entrega
Os pedidos possuem um status de entrega (ex: “Pendente”, “Em trânsito”, “Entregue”, “Cancelado”).

Um código de rastreio é gerado para acompanhar o pedido.

🚀 Objetivo Pessoal
Este projeto faz parte da minha jornada de aprendizado em banco de dados relacionais e tem como objetivo demonstrar minha capacidade de análise de requisitos, estruturação de modelos conceituais e criação de soluções completas para problemas reais de negócio.