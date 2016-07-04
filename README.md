# Olympic
O projeto segue a especificação da [jsonapi](http://jsonapi.org/format/) e utiliza a [jsonapi-resource](https://github.com/cerebris/jsonapi-resources)  

Documentação pode ser acessada na rota http://localhost:3000/api-docs  seguindo o padrão [openapi](http://swagger.io/specification/) utilizando a gem [swagger_rails](https://github.com/domaindrivendev/swagger_rails) que tambem proporciona testes de integração (baseado nas rotas).
* [Teste](#teste)
* [Iniciando o server](#iniciando-o-server)
* [API](#api)
  * [Competition](#competition)
    * [Listagem de tipos](#listagem-de-tipos)
    * [Criação de competição](#criação-de-competição)
    * [Atualizar competição](#atualizar-competição)
    * [Detalhes de uma competição](#detalhes-de-uma-competição)
    * [Listagem de competições](#listagem-de-competições)
  * [Athlete](#athlete)
  * [Score](#score)
    * [Criação de novo _score_](#criação-de-novo-score)
    * [Atualização de _score_](#atualização-de-score)
    * [Limitações na criação e atualização de _score_](#limitações-na-criação-e-atualização-de-score)
  * [Rank](#rank)
  * [Paginação](#paginação) 
  * [Filtro](#filtro) 

  
### Teste

```shell
bundle install
bundle exec rspec spec
```
Nos testes também é avaliado o número de queries executadas com a gem []()

### Iniciando o server
```shell
  bundle install
  bundle exec rails s
```
### API
A  API é composta de recursos _competition_(com diversos subtipos), _athlete_ e _score_
Cada recurso como estipulado em [jsonapi](http://jsonapi.org/format/) tem o formato:
```json
{
  "data":{
    "id": 1,
    "type": "type",
    "links":{
    },
    "attributes":{ 
    },
    "relationships":{
      }
    }
  }
}
```
Abaixo um exemplo completo para atleta, nos exemplos futuros ignoraremos _relationships_ por simplicidade
```json
{
  "data":{
    "id":"6",
    "type":"athletes",
    "links":{
      "self":"http://localhost:3000/v1/athletes/6"
    },
    "attributes":{
      "name":"atl3",
      "sex":"f",
      "age":34
    },
    "relationships":{
      "scores":{
        "links":{
          "self":"http://localhost:3000/v1/athletes/6/relationships/scores",
          "related":"http://localhost:3000/v1/athletes/6/scores"
        }
      },
      "competitions":{
        "links":{
          "self":"http://localhost:3000/v1/athletes/6/relationships/competitions",
          "related":"http://localhost:3000/v1/athletes/6/competitions"
        }
      }
    }
  }
}
```
##### Competition
###### Listagem de tipos
Na rota /competitions/types é possivel listar todos os tips de competição.
```json
{
  "data":[
    {
      "id":"1",
      "type":"competition-types",
      "links":{
        "self":"http://localhost:3000/v1/competitions/types"
      },
      "attributes":{
        "name":"JavelinThrow"
      }
    },
    {
      "id":"2",
      "type":"competition-types",
      "links":{
        "self":"http://localhost:3000/v1/competitions/types"
      },
      "attributes":{
        "name":"Run100m"
      }
    }
  ]
}
```
######Criação de competição
Para criar uma nova competição deve-se enviar um POST para rota /v1/competitions 

Deve-se enviar o body no formato abaixo. O atributo _type_ deve ser um dos listados em /v1/competitions/types
```json
{
  "data":{
    "type":"competitions",
    "attributes":{
      "name":"run2",
      "type":"Run100m",
      "status":"running",
        "max-scores":1,
        "unity":"s"
    }
  }
}
```
######Atualizar competição
Para atualizacao de uma competição deve-se utilizar o mesmo formato, Só é necessário incluit o atributo alterado mas deve-se também incluir o id do recurso como abaixo:

```json
{
  "data":{
    "type":"competitions",
    "id": 4,
    "attributes":{
      "name":"run2_update"
    }
  }
}
```
###### Detalhes de uma competição
Para obter os detalhes de uma competição deve-se fazer um GET na rota /v1/competitions/{id}
```json
{  
  "data":{  
    "id":"4",
    "type":"run100ms",
    "links":{  
      "self":"http://localhost:3000/v1/run100ms/4"
    },
    "attributes":{  
      "name":"run2",
      "type":"Run100m",
      "status":"running",
        "max-scores":1,
        "unity":"s"
    },
    "relationships":{  
   
    }
  }
}
```
###### Listagem de competições
Da mesma forma a rota /v1/competitions lista todas as competições cadastradas
```json
  {
  "data":[
    {
      "id":"1",
      "type":"javelin-throws",
      "links":{
        "self":"http://localhost:3000/v1/javelin-throws/1"
      },
      "attributes":{
        "name":"jav2",
        "type":"JavelinThrow",
        "status":"running",
        "max-scores":3,
        "unity":"m"
      },
      "relationships":{}
    },
    {
      "id":"2",
      "type":"javelin-throws",
      "links":{
        "self":"http://localhost:3000/v1/javelin-throws/2"
      },
      "attributes":{
        "name":"jav1",
        "type":"JavelinThrow",
        "status":"running",
        "max-scores":3,
        "unity":"m"
      },
      "relationships":{}
    },
    {
      "id":"6",
      "type":"javelin-throws",
      "links":{
        "self":"http://localhost:3000/v1/javelin-throws/6"
      },
      "attributes":{  
      "name":"jav2",
      "type":"JavelinThrow",
      "status":"running",
      "max-scores":3,
      "unity":"m"
    },
      "relationships":{}
    }],
  "links":{
    "first":"http://localhost:3000/v1/competitions?page%5Bnumber%5D=1\u0026page%5Bsize%5D=10",
    "last":"http://localhost:3000/v1/competitions?page%5Bnumber%5D=1\u0026page%5Bsize%5D=10"
  }
}
```

##### Athlete
O recurso _athlete_ tem comportamento similar a _competition_. O formato para criação de um novo _athlete_ é: 
```json
{
  "data":{
    "type":"athletes",
    "attributes":{
      "name":"atl3",
      "sex":"f",
      "age":34
    }
  }
}
```
##### Score
O recurso _score_ representa uma pontução de um atleta em uma competição.
###### Criação de novo _score_
para ser criado um _score_ deve ser mandar um post para rota /v1/competitions/:competition_id/athletes/:athlete_id/scores com o body:

```json
{
  "data":{
    "type":"scores",
    "attributes":{
      "value":19.0
    }
  }
}
```
###### Atualização de _score_
Update é feito da mesma forma que os recursos anteriores na mesma rota realizda no post e contendo o _id_
###### Limitações na criação e atualização de _score_
Só é possível cadastrar ou atualizar um _score_ se o status da competição for _running_
##### Rank
É possível obter o rank de uma competição na rota /v1/competitions/{id}/rank 
Será listado o melhor _score_ do atleta (no caso de múltiplis) ordenados do melhor para o pior.
Será mostrado nos atributos também a competição e atleta
```json
{
  "data":[
    {
      "id":"68",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/68"
      },
      "attributes":{
        "value":100,
        "unity":"m",
        "athlete-id":18,
        "athlete-name":"atl15",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"56",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/56"
      },
      "attributes":{
        "value":99,
        "unity":"m",
        "athlete-id":7,
        "athlete-name":"atl4",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"151",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/151"
      },
      "attributes":{
        "value":97,
        "unity":"m",
        "athlete-id":27,
        "athlete-name":"atl24",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"114",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/114"
      },
      "attributes":{
        "value":97,
        "unity":"m",
        "athlete-id":28,
        "athlete-name":"atl25",
        "competition-id":1,
        "competition-name":"jav2"
      } 
    },
    {
      "id":"91",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/91"
      },
      "attributes":{
        "value":97,
        "unity":"m",
        "athlete-id":25,
        "athlete-name":"atl22",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"35",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/35"
      },
      "attributes":{
        "value":96,
        "unity":"m",
        "athlete-id":23,
        "athlete-name":"atl20",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"127",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/127"
      },
      "attributes":{
        "value":96,
        "unity":"m",
        "athlete-id":30,
        "athlete-name":"atl27",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"53",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/53"
      },
      "attributes":{
        "value":96,
        "unity":"m",
        "athlete-id":15,
        "athlete-name":"atl12",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"113",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/113"
      },
      "attributes":{
        "value":93,
        "unity":"m",
        "athlete-id":26,
        "athlete-name":"atl23",
        "competition-id":1,
        "competition-name":"jav2"
      }
    },
    {
      "id":"8",
      "type":"scores",
      "links":{
        "self":"http://localhost:3000/v1/scores/8"
      },
      "attributes":{
        "value":90,
        "unity":"m",
        "athlete-id":5,
        "athlete-name":"atl2",
        "competition-id":1,
        "competition-name":"jav2"
      },
  "links":{
    "first":"http://localhost:3000/v1/competitions/1/rank?competition_id=1&page%5Bnumber%5D=1&page%5Bsize%5D=10",
    "next":"http://localhost:3000/v1/competitions/1/rank?competition_id=1&page%5Bnumber%5D=2&page%5Bsize%5D=10",
    "last":"http://localhost:3000/v1/competitions/1/rank?competition_id=1&page%5Bnumber%5D=3&page%5Bsize%5D=10"
  }
}
```
##### Paginação
Os links de paginação são retornados numa listagem com os seguintes campos (quando nao aplicavéis alguns serão omitidos)

```json
   "links":{
    "first":"link para primeira pagina, sempre presente",
    "next":"link para proxima pagina, quando relevante",
    "prev":"link para pagina anterior, quando relevante",
    "last":"link para primeira pagina, sempre presente"
  }
```
O tamanho de itens por pagina pode ser alterado com o parametro _page[size]_. O parametro _page[number]_ fornece a página corrente.

##### Filtro
É possível filtrar os resultados para os recursos _athlete_ e _competition_ por algum atributo
com o parametro filter[attr] por exemplo com a rota
```uri
/competitions?filter[name]=name
```
O recurso _competition_ pode ser filtrado pelos atributos:name, status, type.

O recurso _athlete_ pode ser filtrado pelos atributos: name, age, sex

