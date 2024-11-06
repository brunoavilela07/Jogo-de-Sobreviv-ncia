# Zabumba

## Descrição
Survival Game é um jogo 2D desenvolvido na Godot Engine, onde o jogador enfrenta ondas de inimigos enquanto coleta power-ups e tenta alcançar a maior pontuação possível.

## Estrutura do Projeto
O jogo é composto por diversas cenas e scripts, cada um com uma função específica que contribui para o funcionamento geral. Abaixo estão as descrições detalhadas das principais classes e seus papéis no jogo:

### Classes Principais

1. **Arena** (`arena.gd`): 
   - Gerencia o ambiente principal do jogo, controlando o spawn de inimigos e power-ups em intervalos de tempo definidos.
   - Possui um sistema de aumento de dificuldade ao reduzir o tempo de spawn dos inimigos ao longo do jogo.

2. **Blood Particles** (`blood_particles.gd`): 
   - Controla as partículas de sangue exibidas quando um inimigo é destruído, adicionando um efeito visual que aumenta a imersão.

3. **Bullet** (`bullet.gd`): 
   - Define o comportamento das balas disparadas pelo jogador, incluindo sua velocidade, direção e dano.
   - A bala é destruída automaticamente ao sair da tela, economizando recursos do jogo.

4. **Camera2D** (`camera_2d.gd`): 
   - Controla o efeito de tremor de câmera, que é ativado ao eliminar inimigos ou em outras ações intensas.
   - Define a intensidade e a duração do tremor, adicionando impacto visual e intensidade ao gameplay.

5. **Enemy Core** (`enemy_core.gd`): 
   - Define a lógica básica dos inimigos, incluindo movimentação em direção ao jogador, sistema de vida e colisão.
   - Configura os efeitos visuais ao sofrer dano e destruir o inimigo, como a criação de partículas de sangue.

6. **Enemy Simple** (`enemy_simple.gd`): 
   - Herda de `Enemy Core` e implementa o comportamento de um tipo de inimigo básico.
   - Esse inimigo se move continuamente em direção ao jogador, seguindo a lógica básica de `Enemy Core`.

7. **Global** (`global.gd`): 
   - Armazena variáveis e funções globais acessíveis por todo o jogo, como a pontuação atual e recorde, e referências de nós.
   - Possui a função `instance_node`, que instancia objetos em posições específicas na cena.

8. **Highscore** (`highscore.gd`): 
   - Exibe e atualiza a pontuação mais alta do jogador durante o jogo, permitindo um acompanhamento de desempenho.

9. **Player** (`player.gd`): 
   - **Função**: Define o personagem principal do jogo, controlando sua movimentação, atributos e interação com o mundo do jogo.
   - **Movimentação**: Controlada pelas teclas **WASD** para mover o jogador e pelo **mouse** para direcionar o tiro.
   - **Velocidade e Características**: Possui variáveis de velocidade, vida e atributos como dano do tiro, velocidade de recarga e efeitos de power-ups.
   - **Interação com Inimigos**: O jogador pode sofrer dano ao colidir com inimigos e é responsável por disparar as balas que os destroem.
   - **Power-ups**: O jogador pode coletar power-ups que aumentam o dano ou a cadência de tiros temporariamente.

10. **Power Up** (`power_up.gd`): 
    - Define o comportamento dos power-ups coletáveis, incluindo o efeito temporário que eles concedem ao jogador.
    - Existem dois tipos principais:
      - **Losango Verde**: Aumenta o número de tiros por alguns segundos.
      - **Losango Rosa**: Aumenta o dano de cada tiro por um período limitado.

11. **Score** (`score.gd`): 
    - Exibe a pontuação atual do jogador, atualizando-se em tempo real conforme o jogador elimina inimigos e acumula pontos.

### Tipos de Inimigos
Existem dois tipos de inimigos no jogo, cada um com características distintas:

- **Inimigo Normal**: Possui uma velocidade e uma quantidade de vida padrão.
- **Inimigo Veloz**: Move-se mais rápido, mas possui menos pontos de vida, oferecendo um desafio diferente ao jogador.

## Como Jogar
- Use **WASD** para movimentar o jogador.
- Use o **mouse** para direcionar o personagem e o tiro.
- Clique com o **botão esquerdo do mouse** para disparar balas nos inimigos.
- Colete os power-ups:
  - **Speed**: Aumenta a quantidade de tiros disparados temporariamente.
  - **strength**: Aumenta o dano de cada tiro por alguns segundos.

## Requisitos
- Godot Engine 4.x

## Agradecimentos
Este trabalho foi desenvolvido para a disciplina de **Usabilidade, Desenvolvimento Web, Mobile e Jogos**, lecionada pelo professor Montanha. A equipe de desenvolvimento foi composta por:

- Juan Moraes Lopes – RA: 12523219000
- Luiz Henrique Fernandes do Carmo – RA: 323118606
- Gabriel Gaia do Amaral – RA: 822229852
- Bruno Almeida Vilela – RA: 323124929


## Licença
Este projeto está sob a licença MIT.
