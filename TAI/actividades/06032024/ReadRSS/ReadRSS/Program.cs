using System;
using System.Xml;
using System.ServiceModel.Syndication;

namespace ReadRSS
{
    internal class Program
    {
        static SyndicationFeed readXMLFile()
        {
            var urlRSS = "https://devocionmatutina.com/feed/";
            XmlReader data = XmlReader.Create(urlRSS);
            var result = SyndicationFeed.Load(data);
            return result;
        }
        static void Main(string[] args)
        {
            var data = readXMLFile();
            
            Console.WriteLine("****************************************************************************************************");
            Console.WriteLine("Mis matutinas");

            foreach (var item in data.Items)
            {
                Console.WriteLine(item.Title.Text);
            }
            Console.WriteLine("****************************************************************************************************");
            Console.WriteLine();
            Console.ReadKey();
        }
    }
}
