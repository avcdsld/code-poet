-- Nothing Can Promise Everything
data Absence : Type where

fromAbsence : Absence -> a
fromAbsence x impossible
