using Spotify.Server.Business;
using Spotify.Server.Entities;
using System.ComponentModel;
using System.Web.Http;

namespace Spotify.Api.Controllers
{
    [RoutePrefix("api/artista")]
    public class ArtistaController : ApiController
    {
        private readonly ArtistaBusiness artistaBusiness;
        public ArtistaController()
        {
            artistaBusiness = new ArtistaBusiness();
        }

        [HttpPost]
        [Route("save")]
        public IHttpActionResult Save(Artista entity)
        {
            try
            {
                var result = artistaBusiness.Save(entity);
                return Ok(result);
            }
            catch (System.Exception e)
            {
                return Ok(string.Format("Favor validar las propiedades! Error: {0}", e.Message));
            }
        }

        [HttpPost]
        [Route("getall")]
        public IHttpActionResult SearchArtista()
        {
            var result = artistaBusiness.GetAll();
            return Ok(result);
        }

        [HttpPost]
        [Route("getbyartista")]
        public IHttpActionResult GetByArtista()
        {
            return Ok("Artistas");
        }
    }
}
