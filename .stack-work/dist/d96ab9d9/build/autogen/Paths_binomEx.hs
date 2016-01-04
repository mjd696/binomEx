module Paths_binomEx (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Program Files\\Haskell Platform\\7.10.2-a\\bin\\binomEx\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\bin"
libdir     = "C:\\Program Files\\Haskell Platform\\7.10.2-a\\bin\\binomEx\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\lib\\x86_64-windows-ghc-7.10.2\\binomEx-0.1.0.0-0zJysJg40Xh6pBzjwypzBi"
datadir    = "C:\\Program Files\\Haskell Platform\\7.10.2-a\\bin\\binomEx\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\share\\x86_64-windows-ghc-7.10.2\\binomEx-0.1.0.0"
libexecdir = "C:\\Program Files\\Haskell Platform\\7.10.2-a\\bin\\binomEx\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\libexec"
sysconfdir = "C:\\Program Files\\Haskell Platform\\7.10.2-a\\bin\\binomEx\\.stack-work\\install\\x86_64-windows\\lts-3.11\\7.10.2\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "binomEx_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "binomEx_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "binomEx_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "binomEx_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "binomEx_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
