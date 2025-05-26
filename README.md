Console.WriteLine("5 sayı giriniz:");
int[] sayilar = new int[5];
int toplam = 0;

for (int i = 0; i < 5; i++)
{
Console.Write("Sayı " + (i + 1) + ": ");
sayilar[i] = Convert.ToInt32(Console.ReadLine());
toplam += sayilar[i];
}
double ortalama = (double)toplam / 5;
Console.WriteLine("Ortalama: " + ortalama);



class Student
{
public string Name { get; set; }
public string Number { get; set; }
}

Student s1 = new Student() { Name = "Ahmet", Number = "123" };
Student s2 = new Student() { Name = "Ayşe", Number = "456" };

Console.WriteLine("1. Öğrenci: " + s1.Name + ", " + s1.Number);
Console.WriteLine("2. Öğrenci: " + s2.Name + ", " + s2.Number);


private void Form1_Load(object sender, EventArgs e)
{
comboBox1.Items.Add("İstanbul");
comboBox1.Items.Add("Ankara");
comboBox1.Items.Add("İzmir");
comboBox1.Items.Add("Bursa");
comboBox1.Items.Add("Adana");
}



private void btnTopla_Click(object sender, EventArgs e)
{
int sayi1 = Convert.ToInt32(textBox1.Text);
int sayi2 = Convert.ToInt32(textBox2.Text);
int toplam = sayi1 + sayi2;
label1.Text = "Toplam: " + toplam.ToString();
}





private void btnEkle_Click(object sender, EventArgs e)
{
listBox1.Items.Add(textBox1.Text);
textBox1.Clear();
}

private void btnSil_Click(object sender, EventArgs e)
{
if (listBox1.SelectedIndex != -1)
{
listBox1.Items.RemoveAt(listBox1.SelectedIndex);
}
}








ry
{
int sayi = Convert.ToInt32(textBox1.Text);
MessageBox.Show("Girdiğiniz sayı: " + sayi);
}
catch
{
MessageBox.Show("Lütfen geçerli bir sayı giriniz!");
}





private void timer1_Tick(object sender, EventArgs e)
{
label1.Text = DateTime.Now.ToString("HH:mm:ss");
}

Form yüklendiğinde Timer’ı başlat:

private void Form1_Load(object sender, EventArgs e)
{
timer1.Start();
}

