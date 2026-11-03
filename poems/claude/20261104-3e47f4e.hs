-- Easy Promises

module EasyPromises where

import Data.Void

promise :: Void -> a
promise = absurd
