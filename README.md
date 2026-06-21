# Cabana do eremita
https://cabana-do-eremita.com

## Executando o projeto
- Instalar o [ruby](https://www.ruby-lang.org/en/documentation/installation/). Qualquer versão moderna deve funcionar, mas em caso de problemas consultar a versão mínima exigida pelo Jekyll ou use a versão utilizada pelo [CI](./.github/workflows/deploy.yml).
- Trocar diretório: `$ cd blog`
- Instalar as dependências: `$ bundle install`
- Rodar o blog: `$ bundle exec jekyll serve`

## Informações legais
Veja [blog/legal.md](./blog/legal.md) ou [a página correspondente no site](https://cabana-do-eremita.com/legal/).

## Política de proteção de branch
Pushes diretamente ao branch master não são permitidos, e por isso toda mudança deve ser feita via PR. O motivo principal é que isso nos protege de qualquer alegação de plágio, tendo em vista que as datas em um git commit podem ser forjadas via flags e variáveis de ambiente, porém a data do PR não.

Outro motivo secundário é que isso nos dá uma chance de revisar e agrupar mudanças antes de subi-las em master, e assim evitando atingir o limite do CI já que toda mudança em master dispara um deploy e portanto gasta minutos do CI.
