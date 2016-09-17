#!/usr/bin/env stack
--stack --resolver lts-7.0 --install-ghc runghc --package turtle

{-# LANGUAGE OverloadedStrings #-}
import Turtle

echoModified filename =
    (datefile . fromText $ filename) >>= echo . repr

main = arguments >>= mapM echoModified
