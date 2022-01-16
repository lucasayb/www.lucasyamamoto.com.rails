# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Article.create(
    title: '7 dicas para a integração perfeita',
    permalink: '7-dicas-para-a-integração-perfeita',
    content: '<p>Hoje em dia, muitas empresas que fazem o próprio site para se inserir na web decidem não abrir mão de seu ERP. Para casos como esse, é necessário desenvolver uma integração, micro aplicação com a responsabilidade de permitir que o sistema web consiga “conversar” com a aplicação própria da empresa. Na nossa trajetória na Codeby, conseguimos obter muitos erros e acertos, e viemos trazê-los aqui para mostrar a vocês, possivelmente, a “fórmula” da integração. Confira!</p><h2 id="1-teste-os-dados-da-aplicação-inicial">1. Teste os dados da aplicação inicial</h2> <p>Antes de iniciar qualquer parte do projeto, faça testes. Ferramentas como Postman servem justamente para isso. Faça todas as requisições possíveis. Isso é feito para que possamos descobrir como os dados chegarão para nossa micro aplicação desenvolvida. Acredite, cada teste de requisição poderá ser responsável por mudar totalmente o direcionamento da integração que está sendo desenvolvida, e também nos ajuda a identificar erros que podem não ser de nosso software.</p><h2 id="2-teste-os-dados-da-aplicação-de-destino">2. Teste os dados da aplicação de destino</h2> <p>A ideia é verificar como as informações devem ser enviados para o sistema final. Isso nos ajuda a estudar quais transformações serão necessárias nos dados do sistema inicial para que ele se adeque ao seu destino.</p><h2 id="3-o-planejamento-é-essencial">3. O planejamento é essencial</h2> <p>Após os testes, está na hora de botar a mão na massa. Por mais óbvio que isso possa parecer, é nesse ponto que o desenvolvimento da integração pode ficar comprometido. Existem situações em que tanto o sistema inicial, quanto o software de destino possuem falhas. E são nesses casos que o planejamento da micro aplicação deve considerar ambas as pontas da comunicação e ser impecável. Uma projeção ruim acarreta em um processo mais longo no desenvolvimento da integração e em correções constantes que poderiam ter sido evitadas nesse passo. Faça fluxogramas, converse com o cliente, não se preocupe em perder tempo aqui. Quanto mais tempo perdido no preparação de seu software, mais tempo se ganhará no desenvolvimento propriamente dito e mais maduro ele se tornará. Ferramentas excelentes como por exemplo o Draw.io estão aí para te ajudar, porém, apesar do programador trabalhar diariamente com computador, ele nunca deverá se livrar do papel e caneta.</p><h2 id="4-foque-no-funcional">4. Foque no funcional</h2> <p>A tarefa deve ser simples e direta: integrar. Quaisquer recursos como painéis administrativos para visualização das informações dessa comunicação deve vir como adicional. Esse é um tipo funcionalidade no projeto que, por mais legal e importante que ela seja, não é essencial para o funcionamento básico da proposta. É claro que o cliente pode vir a exigir algo do tipo, mas jamais perca tempo em uma tarefa que pode ser feita em pouco tempo quando ainda não se tem o núcleo finalizado.</p><h2 id="5-pesquise-e-muito">5. Pesquise, e muito!</h2> <p>É possível e provável que uma das ferramentas na qual você está perdendo mais de 6 horas por dia para desenvolver já tenha sido publicada na internet. A comunidade de desenvolvedores na Web é muito grande, e existem muitas bibliotecas existentes para suprir diversas necessidades. Não reinvente a roda, isso pode ser um tiro no pé tanto no seu quanto no do cliente.</p><h2 id="6-os-dados-serão-mesclados">6. Os dados serão mesclados?</h2> <p>Nesse ponto você deverá decidir qual será o fim dos dados provenientes do sistema inicial. Eles deverão ser unidos ao sistema final? Deverão ser simplesmente armazenados mas separados com algum atributo específico? Esse momento não depende apenas do desenvolvedor. O destino dos dados deve ser estudado juntamente com o cliente, levantando os prós e contras de cada possibilidade.</p><h2 id="7-a-integração-nunca-estará-perfeita">7. A integração nunca estará perfeita</h2> <p>Apesar de o nome do artigo falar sobre a integração perfeita, isso infelizmente é um mito. Toda aplicação está sujeita a exceções. O papel do desenvolvedor no processo de planejamento até a conclusão efetiva de qualquer tipo de sistema é, além de construí-lo, encontrar o máximo de exceções possíveis. Porém a maior dificuldade nesse processo é que não temos controle sobre todas as possibilidades de reação de um software.</p><p>*Para isso, existem diversos frameworks ou robôs desenvolvidos para encontrar uma grande quantidade de possíveis exceções que impeçam o funcionamento adequado do software.</p><p>Por fim, a integração perfeita é aquela que funciona e que possui o objetivo atingido. Por mais que seu cliente seja uma empresa de grande porte, desenvolver uma integração de sistemas não deve ser uma tarefa gigante. Pode ser complicada, ter altos e baixos e na pior das hipóteses uma integração funcional, porém com grandes dificuldades para uma manutenção. Porém busque sempre atingir seu objetivo final e jamais perca a transparência diante do cliente.</p><p>O post <a href="https://codeby.com.br/blogs/codeby/7-dicas-para-a-integracao-perfeita" target="_blank" rel="nofollow">7 dicas para a integração perfeita</a> apareceu primeiro em <a href="https://codeby.com.br/blogs/codeby" target="_blank" rel="nofollow">Blog Codeby</a>.</p>',
    thumbnail_url: 'https://www.lucasyamamoto.com/assets/images/2018-06-21-7-dicas-para-a-integracao-perfeita/Integra%C3%A7%C3%B5es.jpg'
  )
end