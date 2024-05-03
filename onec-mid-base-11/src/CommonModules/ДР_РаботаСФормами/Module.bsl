#Область ПрограммныйИнтерфейс

Процедура ДополнитьФорму(Форма) Экспорт
	//НачалоДоработки
	//Воронов А.В, ДомашниеЗадание "Внесение изменений в конфигурацию на поддержке" от 06.02.2024
	//Подбор процедуры для способа размещения поля КонтактноеЛицо на форме.
	//
	ИмяФормы = Форма.ИмяФормы;
	//
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
		ВставитьПолеКонтактноеЛицоНаФормуПередОснование(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда
		ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);
	КонецЕсли;
	//
	//КонецДоработки
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ДобавитьПолеКонтактноеЛицоВГруппаПраво(Форма)
	//НачалоДоработки
	//Воронов А.В, ДомашниеЗадание "Внесение изменений в конфигурацию на поддержке" от 06.02.2024
	//Добавляем поле КонтактноеЛицо на форму.
	//
	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.ДР_КонтактноеЛицо";
	//
	//КонецДоработки
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоНаФормуПередОснование(Форма)
	//НачалоДоработки
	//Воронов А.В, ДомашниеЗадание "Внесение изменений в конфигурацию на поддержке" от 06.02.2024
	//Вставляем поле КонтактноеЛицо на форму.
	//
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"),, Форма.Элементы.Основание);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.ДР_КонтактноеЛицо";
	//
	//КонецДоработки
КонецПроцедуры

Процедура ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма)
	//НачалоДоработки
	//Воронов А.В, ДомашниеЗадание "Внесение изменений в конфигурацию на поддержке" от 06.02.2024
	//Вставляем поле КонтактноеЛицо на форму.
	//
	ПолеВвода = Форма.Элементы.Вставить("КонтактноеЛицо", Тип("ПолеФормы"),, Форма.Элементы.СуммаДокумента);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.ДР_КонтактноеЛицо";
	//
	//КонецДоработки
КонецПроцедуры

#КонецОбласти
