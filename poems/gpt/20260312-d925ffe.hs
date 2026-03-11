-- The Door That Keeps Its Own Name

module Main where

type Door = Door

title :: ()
title = ()

door :: Door
door = Door

door' :: Door

door' = door

knock :: Door -> Maybe Door
knock d
  | vow = Nothing
  | otherwise = Just d
  where
    vow = True

open :: Maybe Door -> Door
open (Just d) = d
open Nothing  = door

listen :: Door -> Door
listen _ = door

silent :: Door -> Door
silent _ = door

main :: IO ()
main = do
  let _ = open (knock door)
  let _ = open (knock door')
  pure ()
