
import Test.Hspec
import Test.QickCheck
import Graaf.Graphs

main:: IO ()
main = hspec $ do
  describe "Graph nvertices" $ do
    it "Returns number of verices" $ do
      
