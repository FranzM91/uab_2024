using Microsoft.VisualStudio.TestTools.UnitTesting;
using Spotify.Server.Business;
using Spotify.Server.Entities;
using System;
using System.Linq;

namespace Spotify.Test
{
    [TestClass]
    public class UnitTest1
    {
        public readonly ArtistaBusiness repository;
        public readonly AlbumBusiness repositoryalbum;
        public UnitTest1()
        {
            repository = new ArtistaBusiness();
            repositoryalbum = new AlbumBusiness();
        }

        #region Artista

        [TestMethod]
        public void Get()
        {
            var result = repository.GetAll();
            Assert.IsTrue(result.Count != 0);
        }
        [TestMethod]
        public void Save()
        {
            var data = new Artista()
            {
                NombreArtistico = "Anuel",
                Nacionalidad = "Peruano",
                Genero = "No binario",
                GeneroMusical = "Pop",
                FechaNacimiento = new DateTime(2010, 2, 15)
            };
            var result = repository.Save(data);
            Assert.IsTrue(result.Id != 0);
        }

        //[TestMethod]
        //public void returnInt()
        //{
        //    var result = repository.returnIntValue();
        //    Assert.IsTrue(result != 0);
        //}

        [TestMethod]
        public void SearchByFilter()
        {
            var result = repository.searchByFilter("Africa");
            Assert.IsTrue(result.Count != 0);
        }

        #endregion

        #region Album

        [TestMethod]
        public void Getlbum()
        {
            var result = repositoryalbum.GetById(1);
            Assert.IsTrue(result.Id != 0);
        }

        #endregion
    }
}
