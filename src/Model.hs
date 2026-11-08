module Model where

type ID = Int
type Nome = String
type Custo = Double
type MinJogadores = Int
type MaxJogadores = Int

data Dificuldade = Leve | Medio | Complexo deriving (Show, Eq)

data Jogo = Jogo 
  { jogoId      :: ID
  , nomeJogo    :: Nome
  , dificuldade :: Dificuldade
  , preco       :: Custo
  , minJog      :: MinJogadores
  , maxJog      :: MaxJogadores
  , disponivel  :: Bool
  } deriving (Show, Eq)

data Jogador = Jogador
  { jogadorId :: ID
  , nomeJog   :: Nome
  , pontuacao :: Int
  } deriving (Show, Eq)