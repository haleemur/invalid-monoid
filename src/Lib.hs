module Lib where

    import Data.Monoid
    import Control.Monad

    data Bull = Fools | Twoo deriving (Eq, Show)

    instance Monoid Bull where
        mempty = Fools
        mappend _ _ = Fools 

    type BullMappend = Bull -> Bull -> Bull -> Bool