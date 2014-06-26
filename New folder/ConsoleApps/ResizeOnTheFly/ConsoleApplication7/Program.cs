using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;


namespace ConsoleApplication7
{
    public class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            FolderBrowserDialog folder = new FolderBrowserDialog();

            folder.ShowDialog();

            if (folder.ShowDialog() == DialogResult.Cancel)
            {
                Console.Write("Error Has Occur");
                Console.ReadLine();

                return;
            }

            MessageBox.Show(folder.SelectedPath);

            string[] files = System.IO.Directory.GetFiles(folder.SelectedPath, "*jpg");
            int count = 0;

            foreach (string x in files)
            {
                MessageBox.Show(x.ToString());

                Image original = Image.FromFile(x.ToString());

                int width = (int)(original.Width * .75);
                int height = (int)(original.Height * .75);

                Image resized = new Bitmap(original, new Size(width, height));
                Bitmap bitmapp = new Bitmap(resized);

                bitmapp.SetResolution(1,1);
                
                bitmapp.Save(string.Format(@"C:\Users\small\Pictures\New folder\{0}.jpg", count.ToString())
                    , System.Drawing.Imaging.ImageFormat.Jpeg);

                count++;

            }   


            
        }
    }

}
