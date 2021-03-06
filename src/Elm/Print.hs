{- | This module defines prettyprinter for 'ElmDefinition' type.
and exports the function to represent it in the convenient way.
-}

module Elm.Print
       ( module Elm.Print.Common
       , module Elm.Print.Decoder
       , module Elm.Print.Encoder
       , module Elm.Print.Types
       ) where

import Elm.Print.Common
import Elm.Print.Decoder
import Elm.Print.Encoder
import Elm.Print.Types

{-
putStrLn $ T.unpack $ prettyShowDefinition $ DefAlias $ ElmAlias "User" $ (ElmRecordField (TypeName "String") "userHeh") :| [ElmRecordField (TypeName "Int") "userMeh"]

ENUM:
putStrLn $ T.unpack $ prettyShowDefinition $ DefType $ ElmType "Status" [] $ (ElmConstructor "Approved" []) :| [ElmConstructor  "Yoyoyo" [], ElmConstructor "Wow" []]
putStrLn $ T.unpack $ prettyShowEncoder $ DefType $ ElmType "Status" [] $ (ElmConstructor "Approved" []) :| [ElmConstructor  "Yoyoyo" [], ElmConstructor "Wow" []]

putStrLn $ T.unpack $ prettyShowDefinition $ DefType $ ElmType "Status" [] $ (ElmConstructor "Approved" [TypeName "String", TypeName "Int"]) :| [ElmConstructor  "Yoyoyo" [], ElmConstructor "Wow" [TypeName "a"]]

putStrLn $ T.unpack $ prettyShowDefinition $ DefType $ ElmType "Status" ["a"] $ (ElmConstructor "Approved" [TypeName "String", TypeName "Int"]) :| [ElmConstructor  "Yoyoyo" [], ElmConstructor "Wow" [TypeName "a"]]

putStrLn $ T.unpack $ prettyShowDefinition $ DefType $ ElmType "Status" [] ((ElmConstructor "Approved" []) :| [ElmConstructor  "Yoyoyo" [], ElmConstructor "Wow" [], ElmConstructor "OneMore" [], ElmConstructor "AndAnother" []])

-}
