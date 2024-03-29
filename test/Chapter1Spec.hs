import Test.Hspec
import Chapter1
import Control.Exception

main :: IO ()
main = hspec $ do
    describe "divides" $ do 
        it "returns True when the first number divides the second" $
            2 `divides` 4 `shouldBe` True 
        it "returns False when the first number doesn't divide the second" $
            2 `divides` 5 `shouldBe` False 
        it "throws an exception when the first number is 0" $
            evaluate (0 `divides` 2) `shouldThrow` anyArithException 
        it "returns True when the second number is 0" $
            2 `divides` 0 `shouldBe` True 
    describe "lowest discriminator" $ do
        it "returns the lowest discriminator of 2 and 4" $
            ldf 2 4 `shouldBe` 2
        it "returns the lowest discriminator of 2 and 0" $
            ldf 2 0 `shouldBe` 2
        it "throws an exception when the second argument is 0" $
            evaluate (ldf 0 2) `shouldThrow` anyArithException
    describe "lowest discriminator alternative" $ do
        it "returns the same result for edge case as the equality doesn't make difference" $
            ldf 2 4 `shouldBe` ldf' 2 4
    describe "prime numbers" $ do
        it "returns False for 1" $
            prime0 1 `shouldBe` False
    describe "finding minimum from the list of integers" $ do
        it "throws an error for the empty list" $
            evaluate (mnmInt []) `shouldThrow` anyException 
        it "returns the singleton element if there's just one given" $
            mnmInt [1] `shouldBe` 1 
        it "returns the minimum element of a given list" $
            mnmInt [2, 1, 3, 4] `shouldBe` 1
    describe "finding maximum from the list of integers" $ do
        it "throws an error for the empty list" $
            evaluate (maxInt []) `shouldThrow` anyException 
        it "returns the singleton element if there's just one given" $
            maxInt [1] `shouldBe` 1 
        it "returns the maximum element of a given list" $
            maxInt [2, 1, 3, 4] `shouldBe` 4
