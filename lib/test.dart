import 'package:flutter/material.dart';

class Latihan extends StatefulWidget {
  const Latihan({super.key});

  @override
  State<Latihan> createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  String dropdownvalue = 'Routine';

  var items = [
    'Routine',
    'Items 2',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(Icons.list_alt_rounded),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Kegiatan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            hintText: 'Judul Kegiatan'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.sort),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Keterangan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(10),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 40, 15, 40),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Tambah Keterangan'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(children: const [
                      Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                      Icon(Icons.date_range),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Tanggal Mulai',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range_outlined),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Tanggal Selesai',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(),
                          hintText: '20-03-2022'),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(),
                          hintText: '20-03-2022'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.category),
                      Padding(padding: EdgeInsets.all(5)),
                      Text('Kategori'),
                    ],
                  ),
                  DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text('Routine'),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      }),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Batal',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Simpan',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
