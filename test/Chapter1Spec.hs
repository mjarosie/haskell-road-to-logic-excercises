import Test.Hspec
import Chapter1

main :: IO ()
main = hspec $ do
    describe "divides" $ do 
        it "returns True when the first number divides the second" $
           2 `divides` 4 `shouldBe` True 
