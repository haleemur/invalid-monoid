module Main where

    import Test.QuickCheck
    import Data.Monoid
    import Control.Monad
    import Lib

    instance Arbitrary Bull where
        arbitrary = 
            frequency [ 
                (1, return Fools),
                (1, return Twoo)
            ]


    monoidAssoc :: BullMappend
    monoidAssoc a b c = (a <> b) <> c == a <> (b <> c)

    monoidLeftIdentity :: Bull -> Bool
    monoidLeftIdentity a = mempty <> a == a

    monoidRightIdentity :: Bull -> Bool
    monoidRightIdentity a = a <> mempty == a

    main :: IO ()
    main = do
        let ma = monoidAssoc
            mli = monoidLeftIdentity
            mri = monoidRightIdentity
        
        quickCheck (ma :: BullMappend)
        quickCheck (mli :: Bull -> Bool)
        quickCheck (mri :: Bull -> Bool)
