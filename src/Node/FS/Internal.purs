
module Node.FS.Internal where

import Prelude
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)

mkEff :: forall a. (Unit -> a) -> Effect a
mkEff = unsafeCoerce

foreign import unsafeRequireFS :: forall props. { | props }
