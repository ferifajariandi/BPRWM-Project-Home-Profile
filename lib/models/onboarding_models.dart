class OnboardingModel {
  final String imageAsset;
  final String title;
  final String description;


  OnboardingModel(
  {required this.description,
    required this.imageAsset,
    required this.title,});
}

List<OnboardingModel> onboarding = <OnboardingModel>[
  OnboardingModel(description: 'Mari rencakan jenjang karir anda, pendidikan, rumah, dan pernikahan dengan apliaksi BPRWM',
                  imageAsset: 'assets/images/bpr2.png',
                  title: 'Rencanakan Masa Depanmu'),
  OnboardingModel(description: 'Ajukan kredit anda dengan menggunakan Aplikasi BPRWM proses cepat tanpa ribet',
                  imageAsset: 'assets/images/bprs.png',
                  title: 'Kredit Kilat'),
  OnboardingModel(description: 'Manfaatkan dana talangan usaha dan nikmati interest rate harian yang kompetitif mulai 0,06% per hari',
                  imageAsset: 'assets/images/phone.png',
                  title: 'Kredit Instant'),
  OnboardingModel(description: 'Memberi solusi untuk memiliki emas dengan bunga flat 0,69%, jangka waktu s/d 5 tahun, proses cepat dan mudah',
      imageAsset: 'assets/images/gold.png',
      title: 'Cicil Emas'),
];