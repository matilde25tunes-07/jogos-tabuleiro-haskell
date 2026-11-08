module Domain where

import Model

-- | Filtra jogos por nível de dificuldade (Função pura com HOF)
filtrarPorDificuldade :: Dificuldade -> [Jogo] -> [Jogo]
filtrarPorDificuldade dif = filter (\j -> dificuldade j == dif)

-- | Atualiza o estado de disponibilidade de um jogo
atualizarDisponibilidade :: Bool -> Jogo -> Jogo
atualizarDisponibilidade estado j = j { disponivel = estado }

-- | Calcula recursivamente a pontuação total somada de todos os jogadores
pontuacaoTotal :: [Jogador] -> Int
pontuacaoTotal [] = 0
pontuacaoTotal (j:js) = pontuacao j + pontuacaoTotal js

-- | Procura recursivamente um jogo por ID numa lista
procurarJogoPorId :: ID -> [Jogo] -> Maybe Jogo
procurarJogoPorId _ [] = Nothing
procurarJogoPorId target (j:js)
  | jogoId j == target = Just j
  | otherwise          = procurarJogoPorId target js

-- | Conjunto inicial de dados para demonstração
jogosIniciais :: [Jogo]
jogosIniciais = 
  [ Jogo 1 "Catan" Medio 45.0 3 4 True
  , Jogo 2 "Carcassonne" Leve 30.0 2 5 True
  , Jogo 3 "Gloomhaven" Complexo 120.0 1 4 False
  ]

jogadoresIniciais :: [Jogador]
jogadoresIniciais = 
  [ Jogador 101 "Ana Silva" 150
  , Jogador 102 "Carlos Santos" 210
  ]