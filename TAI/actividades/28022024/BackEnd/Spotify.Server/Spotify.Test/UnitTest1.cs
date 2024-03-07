using Microsoft.VisualStudio.TestTools.UnitTesting;
using Spotify.Server.Business;
using Spotify.Server.Entities;

namespace Spotify.Test
{
    [TestClass]
    public class UnitTest1
    {
        public readonly ArtistaBusiness repository;
        public UnitTest1()
        {
            repository = new ArtistaBusiness();
        }
        [TestMethod]
        public void Get()
        {
            var result = repository.GetAll(1);
            Assert.IsTrue(result.Id != 0);
        }
        [TestMethod]
        public void Save()
        {
            var data = new Artista();
            var result = repository.Save(data);
            Assert.IsTrue(result.Id != 0);
        }
    }
}
